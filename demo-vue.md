> 官方文档：https://docsify.js.org/#/zh-cn/vue
## 局部使用Vue
注意docsify中markdown内的第一个script才会执行，所以需要将vue示例的初始化放到第一个script内。

vue模板如下：
``` html
<div id="counter">
  <button @click="a -= 1">-</button>
  {{ a }}
  <button @click="a += 1">+</button>
</div>
```
markdown内的第一个script内初始化vue代码如下：
``` javascript
<script>
    (function(){
        new Vue({
            el:'#counter',
            data() {
                return {
                    a: 1,
                };
            }
        });
    })();
</script>
```
效果如下：
<div id="counter">
  <button @click="a -= 1">-</button>
  {{ a }}
  <button @click="a += 1">+</button>
</div>

## 全局使用Vue
请先在index.html页面内注册全局组件。
如下是笔者自定义的卡片预览全局vue组件card-link。
``` javascript
window.$docsify = {
    'card-link': {
        template: `
        <a :href="href" target="_blank">
            预览卡片({{title}})
        </a>
        `,
        props:["id","title"],
        computed: {
            href(){
                return "http://mg.meiflower.top/cardview/index.html?id="+this.id;
            }
        },
        data() {
            return {
                
            }
        }
    }
}
```
既然是全局组件，那么就可以在md中使用。
``` markdown
* <card-link id="5f3245cc14434434810bece36ea97125" title="5大并发级别"/>
* <card-link id="3b102ecec0474a74a18dc51ad1f6b7e1" title="CPU各种频率"/>
```
效果如下：
* <card-link id="5f3245cc14434434810bece36ea97125" title="5大并发级别"/>
* <card-link id="3b102ecec0474a74a18dc51ad1f6b7e1" title="CPU各种频率"/>

<script>
    (function(){
        new Vue({
            el:'#counter',
            data() {
                return {
                    a: 1,
                };
            }
        });
    })();
</script>