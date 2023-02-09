
## 嵌入远程md示例

依赖插件：[docsify-remote-markdown](https://www.npmjs.com/package/docsify-remote-markdown)，其中`rmd2`为配置的`tag`，且需要引入github来源的，其他的可能会报跨域错误。

``` text
[rmd2](https://raw.githubusercontent.com/mg0324/my-project/master/home-docsify/skill/front/all.md)
```


## 嵌入drawio示例

依赖插件：[docsify-drawio](https://github.com/KonghaYao/docsify-drawio) 和[文件嵌入](https://docsify.js.org/#/zh-cn/embed-files?id=%e5%b5%8c%e5%85%a5%e7%9a%84%e7%b1%bb%e5%9e%8b)。
``` md
[filename](https://cdn.jsdelivr.net/npm/docsify-drawio/test.drawio ':include :type=code')
```
效果如下：

[filename](https://cdn.jsdelivr.net/npm/docsify-drawio/test.drawio ':include :type=code')

## 嵌入drawio png示例
将draw的图片引入到md

![](demo.drawio.png)


## 嵌入iframe示例

``` md
[docsify](https://docsify.js.org/#/zh-cn/ ':include :type=iframe id=a1 width=100% height=400px')
```

效果如下：
<iframe src="https://docsify.js.org/#/zh-cn/" style="width:100%;height:400px;"></iframe>

## 嵌入mp3示例

``` md
[filename](https://raw.githubusercontent.com/mg0324/my-res/main/hasl.mp3 ':include :type=audio')
```

效果如下：

<audio src="https://raw.githubusercontent.com/mg0324/my-res/main/hasl.mp3" controls="controls">Not Support</audio>

