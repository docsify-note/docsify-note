# 更新日志

## 2023-04-05
1. 修复cdn被墙超时的问题，从cdn切换到gcore。

## 2023-04-02
1. 修改评论插件为valine，支持匿名评论。
2. 发布[docsify-mango-valine](https://www.npmjs.com/package/docsify-mango-valine)插件到公共仓库
3. 修改热门前端路径到my-res中。
4. 增加[docsify-template](https://mg0324.github.io/docsify-template/#/)的链接。
5. 整理首页的相关资源列表。

## 2023-03-31
1. 修复小屏时，目录图标点击不方便的问题。（将`sidebar-pin`移动至`-1`层防止盖住）

## 2023-03-28
1. 给完整新增favicon图标。
2. 更新首页，添加微信二维码，欢迎大家加入交流群。

## 2023-02-26
1. 新增`docsify-ads`插件，显示七牛云的广告。
2. 首页下方添加`docsify-ads`广告插件说明。
3. 广告内容新增腾讯云相关推广链接。

## 2023-02-25
1. 新增`emoji`示例页。
2. 新增`vue`示例页。


## 2023-02-24
1. 增加docsify使用vue的示例页，内有局部使用和全局使用。

## 2023-02-22
1. 将`index.html`页内的自定义样式抽出到`ext.css`并引入。
2. 支持`mg-badge`徽章样式，使用在`title`里显示文档最新版本。

## 2023-02-21
1. 回应评论，将自定义书签页分享出来作为书签示例。
2. 搜索配置修复，修改为`search:'auto'`，细节配置请查询[官方文档](https://docsify.js.org/#/zh-cn/plugins?id=%e5%85%a8%e6%96%87%e6%90%9c%e7%b4%a2-search)。

## 2023-02-14
1. 新增java代码高亮支持，及对应demo示例。

## 2023-02-10
1. 更换giscus配置的仓库指向docsify-comments。

## 2023-02-09
1. demo-high中增加drawio png的方式引入可编辑图片。
2. 主页添加docsify临时文档地址，方便无法访问官方文档的同学。

## 2023-02-08
1. 将主页修改为示例页，整理相关示例。
2. 集成更新日志模块。
3. 调整相关插件配置。
4. 删除test左侧目录及文件。
5. 集成remoteMarkdownUrl插件，注意需要引用的是来自github上的md文档。（开放跨域了）
6. 完善demo示例页。
7. 将原主页里的demo内容移动到demo.md中，并完成主页。
8. 调整navbar内容里的快速跳转链接。
9. demo页增加faq示例。
10. 集成docsify-drawio插件，并在demo页维护其示例。
11. 集成docsify-pangu插件，自动在中文和英文间隔空格。
12. 集成docsify-kroki插件，支持全热门图形化语言，如plantuml、mermaid等。
13. demo页新增嵌入mp3示例。
14. 将示例demo页内容分为基础示例和高级示例，处理左侧sidebar重复的问题。
