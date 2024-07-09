# 更新日志
## 2024-07-xx
1. 完善readme，添加docsify auth插件。
2. 新增插件篇菜单，内容指向docsify template里的插件特性说明。
3. 新增插件开发示例内容。

## 2024-03-31
1. 切换cdn到`https://cdn.jsdelivr.net/`，恢复访问。

## 2023-09-26
1. 更新主页内容，基于`docsify-note-cli`完善快速构建。
2. pdf示例，更新注意事项。

## 2023-04-xx
1. 将cdn切换到`https://mg.meiflower.top/oss/cdn/`，因为`cdn`和`gcore`会出现被墙的可能。

## 2023-04-15
1. 发布[1.1.0](https://github.com/mg0324/docsify-note/releases/tag/1.1.0)版本，整合小版本日志。
2. index.html更新docsify版本到4.13.0。（2023-04-12）
3. 更新b站视频列表。（2023-04-12）
4. 集成[docsify-contributors](https://www.npmjs.com/package/docsify-contributors)插件，显示仓库共享者。（2023-04-12）
5. 安装[docsify-to-pdf](https://www.npmjs.com/package/docsify-to-pdf)，将docsify-note生成pdf文档，并上传到`pdf`分支。（2023-04-12）
6. 集成[docsify-pdf-embed-plugin](https://www.npmjs.com/package/docsify-pdf-embed-plugin)插件，内嵌pdf文档。（2023-04-12）
7. 新增docsify的b站视频目录说明页。（2023-04-09）
8. 完善首页，将相关资源丰富。（2023-04-09）
9. 修复cdn被墙超时的问题，从cdn切换到gcore。（2023-04-05）

## 2023-04-02
1. 发布[1.0.0](https://github.com/mg0324/docsify-note/releases/tag/1.0.0)版本。
2. 修改评论插件为valine，支持匿名评论。（2023-04-02）
3. 发布[docsify-mango-valine](https://www.npmjs.com/package/docsify-mango-valine)插件到公共仓库（2023-04-02）
4. 修改热门前端路径到my-res中。（2023-04-02）
5. 增加[docsify-template](https://mg0324.github.io/docsify-template/#/)的链接。（2023-04-02）
6. 整理首页的相关资源列表。（2023-04-02）
7. 修复小屏时，目录图标点击不方便的问题。（将`sidebar-pin`移动至`-1`层防止盖住）（2023-03-31）
8. 给完整新增favicon图标。（2023-03-28）
9. 更新首页，添加微信二维码，欢迎大家加入交流群。（2023-03-28）
10. 新增`docsify-ads`插件，显示七牛云的广告。（2023-02-26）
11. 首页下方添加`docsify-ads`广告插件说明。（2023-02-26）
12. 广告内容新增腾讯云相关推广链接。（2023-02-26）
13. 新增`emoji`示例页。（2023-02-25）
14. 新增`vue`示例页。（2023-02-25）
15. 增加docsify使用vue的示例页，内有局部使用和全局使用。（2023-02-24）
16. 将`index.html`页内的自定义样式抽出到`ext.css`并引入。（2023-02-22）
17. 支持`mg-badge`徽章样式，使用在`title`里显示文档最新版本。（2023-02-22）
18. 回应评论，将自定义书签页分享出来作为书签示例。（2023-02-21）
19. 搜索配置修复，修改为`search:'auto'`，细节配置请查询[官方文档](https://docsify.js.org/#/zh-cn/plugins?id=%e5%85%a8%e6%96%87%e6%90%9c%e7%b4%a2-search)。（2023-02-21）
20. 新增java代码高亮支持，及对应demo示例。（2023-02-14）
21. 更换giscus配置的仓库指向docsify-comments。（2023-02-10）
22. demo-high中增加drawio png的方式引入可编辑图片。（2023-02-09）
23. 主页添加docsify临时文档地址，方便无法访问官方文档的同学。（2023-02-09）
24. 将主页修改为示例页，整理相关示例。（2023-02-08）
25. 集成更新日志模块。（2023-02-08）
26. 调整相关插件配置。（2023-02-08）
27. 删除test左侧目录及文件。（2023-02-08）
28. 集成remoteMarkdownUrl插件，注意需要引用的是来自github上的md文档。（开放跨域了）（2023-02-08）
29. 完善demo示例页。（2023-02-08）
30. 将原主页里的demo内容移动到demo.md中，并完成主页。（2023-02-08）
31. 调整navbar内容里的快速跳转链接。（2023-02-08）
32. demo页增加faq示例。（2023-02-08）
33. 集成docsify-drawio插件，并在demo页维护其示例。（2023-02-08）
34. 集成docsify-pangu插件，自动在中文和英文间隔空格。（2023-02-08）
35. 集成docsify-kroki插件，支持全热门图形化语言，如plantuml、mermaid等。（2023-02-08）
36. demo页新增嵌入mp3示例。（2023-02-08）
37. 将示例demo页内容分为基础示例和高级示例，处理左侧sidebar重复的问题。（2023-02-08）
