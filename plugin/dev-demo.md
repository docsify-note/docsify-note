## 需求背景
很多小伙伴在使用过程中，希望部分页面需要认证后才能访问。

## 解决方案
* nginx部署+代理，部分路径开启密码认证。
* 开发docsify自定义认证插件来实现。

> 考虑到部署方式多为公共的静态服务，如github pages、netlify等，是没有服务器资源来放nginx的，所以开发docsify-auth插件来实现可配置认证功能。

## 插件特性定义
* 支持开启和关闭。
* 支持选择不同的密码加密，如sha256和md5等。
* 支持页面路径配置，支持regex识别。

## 原型图
![](https://res.meiflower.top/.netlify/images?url=/docsify-note/docsify-auth-prd.jpg)

在页面配置了需要认证时，第一次访问会显示认证框，输入密码正确后刷新可正常查看文档内容。

## docsify-auth插件
详细请跳转到[docsify-auth](https://www.npmjs.com/package/docsify-auth)查看。

## 开发步骤
1. 下载脚手架工具`docsify-plugin-cli`，开发中...
2. 初始化`docsify-auth`插件工程 `docsify-plugin-cli init -name docsify-auth`
3. 完成插件主逻辑

``` js

// 依赖配置项放到window.$docsify.auth 
/**
 * auth = {
 *   enable: true,
 *   use: "sha256", //默认sha256,支持md5
 *   password: "e10adc3949ba59abbe56e057f20f883e",
 *   paths: ["^/api"],
 *   title: "请输入密码以访问文档："
 * }
 * 
 * 
 */
import md5 from 'md5';

function validatePassword(inputPassword, encryptedPassword) {
    var inputPasswordHash = sha256(inputPassword);
    if (window.$docsify.auth.use == "md5") {
        inputPasswordHash = md5(inputPassword);
    }
    return inputPasswordHash === encryptedPassword;
}

function injectStyle() {
    const styleEl = document.createElement("style");
    styleEl.textContent = `
    #auth-dialog {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 250px;
        width: 400px;
        border: 1px solid #eee;
        margin: 0 auto;
        margin-top: 20px;
      }
      #auth-dialog input {
        margin: 10px 0;
        padding: 10px;
        font-size: 16px;
      }
      #auth-dialog button {
        padding: 10px 20px;
        font-size: 16px;
      }
      #auth-dialog error-message {
        color: red;
        margin-top: 10px;
      }
    `;
    document.head.insertBefore(styleEl, document.querySelector("head style, head link[rel*='stylesheet']"));
}

function injectAuthDialog() {
    /**
     * <div id="auth-dialog" style="display: none;">
        <h2>请输入密码以访问文档：</h2>
        <input type="password" id="auth-pwd" placeholder="Password">
        <button onclick="checkPassword()">提交</button>
        <p id="error-message" style="color: red; display: none;">密码错误，无法访问文档。</p>
    </div>
     */
    let auth = window.$docsify.auth;
    let divEl = document.createElement('div');
    divEl.id = "auth-dialog";
    divEl.style.display = "none";
    divEl.innerHTML = `
        <span style="font-size:22px;font-weight:blod;">${auth.title}</span>
        <input type="password" id="auth-pwd" placeholder="Password">
        <button onclick="checkPassword()">提交</button>
        <p id="error-message" style="color: red; display: none;">密码错误，无法访问。</p>
    `;
    document.getElementsByTagName("body")[0].appendChild(divEl);
}

function setAuthDialog(isShow) {
    if (isShow) {
        document.getElementById('auth-dialog').style.display = 'flex';
        if (document.getElementsByClassName('github-corner')[0]) {
            document.getElementsByClassName('github-corner')[0].style.display='none';
        }
        document.getElementsByTagName('main')[0].style.display='none';
        document.getElementsByTagName('nav')[0].style.display='none';
    } else {
        document.getElementById('auth-dialog').style.display = 'none';
        if (document.getElementsByClassName('github-corner')[0]) {
            document.getElementsByClassName('github-corner')[0].style.display='block';
        }
        document.getElementsByTagName('main')[0].style.display='block';
        document.getElementsByTagName('nav')[0].style.display='block';
    }
}

export function install (hook, vm) {
    hook.init(function() {
        // 初始化并第一次加载完成数据后调用，没有参数。
        injectStyle();
        injectAuthDialog();
    });
    hook.beforeEach(function(content) {
        // 判断网页地址，是否需要认证，如果需要则弹出密码框
        // 根据window.$docsify.routerMode来适配获取当前路径
        let rm = window.$docsify.routeMode;
        var currentPath = window.location.hash.split('?')[0].split('#')[1] || '/';
        if (rm == "history") {
            currentPath = window.location.hash.split('?')[0].split('#')[0] || '/';
        }
        console.info("currentPath:" + currentPath);
        var needAuth = null;
        let auth = window.$docsify.auth;
        let paths = auth.paths;
        // 遍历配置，使用正则表达式匹配路径
        for (var i = 0; i < paths.length; i++) {
            // 匹配路径
            if (new RegExp(paths[i]).test(currentPath)) {
                needAuth = true;
                break;
            }
        }
        // 是否开启认证，且需要认证，且还没有认证过
        if (auth.enable && needAuth && !sessionStorage.getItem('authenticated')) {
            setAuthDialog(true);
            window.checkPassword = function() {
                let pwd = document.getElementById("auth-pwd").value;
                if (validatePassword(pwd, window.$docsify.auth.password)) {
                    sessionStorage.setItem('authenticated', 'true');
                    setAuthDialog(false);
                } else {
                    document.getElementById('error-message').style.display = 'block';
                }
            }
            return '<div style="color:red;">第一次认证成功后，请重新刷新即可查看内容！</div>';
        } else {
            setAuthDialog(false);
            return content;  // 返回原始内容
        }
    });
}
```

4. 编译打包`yarn build`
5. 在docsify的其他文档工程中验证插件功能，迭代调试
6. 发布插件

``` shell
# 先登录npm.js，没有账号需要注册一个
npm login
# 打包编译，执行完成后会生成dist目录
yarn build
# 发布包到npm.js公共仓库前，需要核对package.json中的version
npm publish
```

以上步骤执行完成后，恭喜你终于开发了一个docsify插件，为docsify贡献了新的特性。