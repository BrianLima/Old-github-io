## jekyll-theme-H2O

Based on Jekyll's blog theme template, simple and lightweight.

In addition, there is the [Ghost version] of this theme (https://github.com/eastpiger/ghost-theme-H2O) by [eastpiger](https://github.com/eastpiger)

### Preview

#### [Online Preview Live Demo →] (http://liaokeyu.com/)

![](screenshot/jekyll-theme-h2o-realhome.jpg)

![](screenshot/jekyll-theme-h2o-realm.png)

If you like this blog template, please star in the upper right corner, thank you very much~

If you like this theme or using it, please give a ⭐️ for motivation ;)

If you want to experience mobile browsing, you can scan the QR code:

![](screenshot/1494404591.png)

Using your smartphone to scan the QR Code

### Features Features

#### CN

- Code highlighting
- Night mode
- The review system
- Pink and blue two themes
- Personalized shading
- Responsive design
- Social icons
- SEO title optimization
- Article Label Index
- Blog Article Search
- Copy article content automatically add copyright

#### EN

- Code highlight
- Night mode
- Connecticut Comment System
- Theme color: Blue & Pink
- Hero Patterns
- Responsive design
- SNS Icon
- Title SEO
- Tags system
- Search
- Copyright text on copy event

### Usage Quick Start

First you need to install Jekyll, please check the documentation: [Quick Guide] (http://jekyll.com.cn/docs/quickstart/)

If you have installed Jekyll, check if the version is 3.0.x. You can use the ```gem update jekyll``` command to upgrade.

Install Jekyll's paging plugin using ```gem install jekyll-paginate``` or ```sudo gem install jekyll-paginate```.

> The H2O theme is based on the Jekyll 3.2.1 version. There may be some differences between different versions. For details, please refer to [Official Update Document] (https://jekyllrb.com/news/)

Click the Fork button in the upper right corner to create a branch on your Github, or ```clone``` to the local.

``` git clone https://github.com/kaeyleo/jekyll-theme-H2O.git ```

Finally, by typing ```jekyll server``` on the command line to start the service, you can preview the topic locally.

If you need to deploy to an online environment, please refer to the **Start** section of the configuration document.

### Document Configuration Document

#### CN

- Start
- [Site Information] (#site information)
- [Write an article] (#write an article)
- Components
- [Navigation] (#Navigation)
- [Sidebar] (#sidebar)
- [Social Icons] (#Social Icons)
- [Introduction] (#Introduction)
- [Label] (#tag)
- [Article search] (# article search)
- [Code highlighting] (# code highlighting)
- [Night mode] (#Night mode)
- personalise
- [Theme skin] (# theme skin)
- [Head shading] (# head shading)
- Advanced section
- [Custom] (#Custom)
- Integration Services
- [Disqus](#Disqus)
- [Share.js](#Share.js)

#### EN

- Get Started
- [Site Settings] (#site information)
- [Write Posts](#write an article)
- Components
- [Navigation Menu] (#Navigation)
- [Sidebar] (# sidebar)
- [SNS Icons] (#Social Icons)
- [Personal Information] (#personal profile)
- [Tags] (#tag)
- [Search] (#Article Search)
- [Syntax Highlight] (#code highlighting)
- [Night Mode] (#night mode)
- Style
- [Theme Color] (# theme skin)
- [Hero Background Patterns] (#header shading)
- Advanced
- [Customization] (#Custom)
- Plugins
- [Disqus](#Disqus)
- [Share.js](#Share.js)


You can easily get started by modifying _config.yml

#### Site Information

You can easily modify your `_config.yml` file to easily start building your own blog

```
# Site settings
Title: 'Liao Keyu's Independent Blog' # Your blog site title
Description: 'I am very happy to share my thoughts on technology and life with you here. ' # Site Description
Keyword: 'Liao Keyu, Liao Keyu's independent blog, front end, design' # website keywords
Url: 'http://liaokeyu.com' # site url
Baseurl: ''

# Build settings
Paginate: 6 # Put a few articles on one page
Paginate_path: 'page:num'
```

In fact, most of the parameters have been configured by default. You only need to understand them through the documentation, and then modify them according to your needs in the `_config.yml` file.

#### Write an article

Articles are generally placed in the `_posts` folder, and the header of each article needs to be set:

```
---
Layout: post
Title: 'H2O theme for Jekyll'
Subtitle: 'Perhaps the most beautiful Jekyll theme'
Date: 2017-04-18
Categories: Technology
Cover: 'http://on2171g4d.bkt.clouddn.com/jekyll-theme-h2o-postcover.jpg'
Tags: jekyll front-end development design
---
```

#### Navigation

The navigation bar information at the top of the blog needs to be configured in the following format:

```
# Navigation links
Nav:
  Home: '/'
  Tags: '/tags.html'
```

Navigation links need to be written with the full html file name. They are all placed in the root directory. If you create your own folder, be sure to add the file name of the self-built folder to the `exclude` parameter:

```
# Build settings
Exclude: ['node_modules', 'dev', 'package.json', 'Custom Folder Name']
```

This is done to exclude certain files from being copied to the run file `_site` when Jekyll is run.

#### Sidebar

![](screenshot/jekyll-theme-h2o-sideBar.png)

The sidebar is divided into two parts: [introduction] and [recommendation tag]. When the screen width is less than 960px, the sidebar will be hidden.

#### Social Icons

Using Icon's iconic management platform, Iconfont, a set of commonly used social icons for blog personal profiles, including Weibo, Zhihui, Nuggets, short books, Github, etc., and thirteen sites, and when hovering Style colors are optimized.

The configuration format is as follows:

```
# SNS settings Configure social network URL
Sns:
  Weibo: '//weibo.com/lovecolcol'
  Juejin: '//juejin.im/user/57a6f434165abd006159b4cc'
  Instagram: '//www.instagram.com/steveliaocn'
  Github: '//github.com/kaeyleo'
```

Sns attribute optional parameters:

Social Website | Parameters
--------|----
Weibo | `weibo`
Zhihu | `zhihu`
Twitter | `twitter`
Instagram | ʻInstagram`
Nuggets | `juejin`
Github | `github`
Douban | `douban`
Facebook | `facebook`
Dribble | `dribble`
UI China | ʻuicn`
Brief book | `jianshu`
Medium | `medium`
LinkedIn |

#### Personal profile

Your personal profile will be displayed on the home sidebar and at the bottom of the article page

```
# Author configure blogger information
Author: 'Jack'
Nickname: 'xx'
Bio: 'programmer'
Avatar: 'assets/img/avatar.jpg'
```

#### Tags

Configure the tag module on the sidebar accordingly:

```
# Tags
Recommend-tags: true
Recommend-condition-size: 12

```

Tags configuration instructions:

 Properties | Arguments | Description
-----|-----|-------
`recommend-tags` | `true`, `false` | Whether to show recommended tags
`recommend-condition-size` | `12` or other number | Recommended number of tags limit

#### Article Search

![](screenshot/jekyll-theme-h2o-search.png)

Based on the Jekyll server to generate the article index file `search.json` to provide search services for blogs. Enter the article title or keywords associated with the article tag.

The search function is enabled by default and is displayed in the card style at the bottom of the sidebar. To close, change the value of the `search` attribute in the `_config.yml` configuration file to `false`.

```
# Search
Search: true
```

Description | Parameters
----|-----
Turn on search function | `true`
Turn off search function | `false`

#### Code Highlighting

The template introduced [Prism.js] (http://prismjs.com), a lightweight, extensible code syntax highlighting library.

Many well-known websites such as [MDN] (https://developer.mozilla.org/), [css-tricks] (https://css-tricks.com/) are also using it, even the father of JavaScript [Brendan Eich ](https://brendaneich.com/) is also used on personal blogs.

![Code highlighting](http://on2171g4d.bkt.clouddn.com/jekyll-theme-h2o-highlight.png)

Following the [HTML5](https://www.w3.org/TR/html5/grouping-content.html#the-pre-element) standard, Prism uses semantic <pre> elements and `<code>` Elements to mark the code block:

```
<pre><code class="language-css">p { color: red }</code></pre>
```

In Markdown you can write like this:


```css
p { color: red }
```

Support language:

- HTML
- CSS
- Sass
- JavaScript
- CoffeeScript
- Java
- C-like
- Swift
- PHP
- Go
- Python

#### Night mode

Night mode is automatically switched on from 11pm to 6am. If not, change the value of the `nightMode` attribute in the `_config.yml` configuration file to `false`.

```
# Night mode
nightMode: true
```

Description | Parameters
----|-----
Turn on night mode | `true`
Turn off night mode | `false`

#### Theme skin

![](screenshot/jekyll-theme-h2o-themecolor.jpg)

Supports two themes color blue (default) and pink

The main effect is reflected in the home page cover, the logo in the top navigation bar, and the color effect of text displayed when the mouse is hovering.

```
# theme color
Theme-color: 'default' # pink or default
```

Color | Parameters
----|-----
Blue | `default`
Pink | `pink`

If you want to display a picture on your blog cover, you need to add the `header-img` configuration to the header information in the index.html file:

```
---
Layout: default
Home-title: Steven's Blog
Description: developer, creator
Header-img: assets/img/banner.jpg
---
```

#### Head figure shading

![](screenshot/jekyll-theme-h2o-heroPatterns.png)

Isn't it boring to simply display colors without pictures? So think of adding shading elements, shading material is SVG format (stored in css style), loading much faster than the picture. Six shades (circuitry, food, sea of ​​clouds, diamonds, etc.) are available for your selection and are configured as follows:

```
# Hero background patterns
postPatterns: 'circuitBoard'
```

`postPatterns` property parameter configuration:

Shading description | parameters
------|------
电路 | `circuitBoard`
圆环 | `overlappingCircles`
吃货日常：啃打鸡 | `food`
土豪必备：钻石| `glamorous`
圈圈叉叉 | `ticTacToe`
中国风：云海 | `seaOfClouds`

#### 自定义

主题开发使用的技术栈也比较简单：引入jQuery类库、使用Sass代替CSS编写样式，使用Gulp完成Sass的编译、CSS和JavaScript的代码合并压缩等任务。

如果你喜欢折腾，想对模板的代码进行修改，需要使用命令 `npm install` 安装 `package.json` 中的依赖，然后 `gulp` 一下即可开始你的自定义之旅。

在了解H2O主题的目录结构之前，确保你对[Jekyll目录结构](http://jekyll.com.cn/docs/structure/)有所了解。

```
	.
	├── _config.yml # 配置文件
	├── _includes # 页面组件方便重用
	|   ├── footer.html # 页脚
	|   └── head.html # html文档的头部内容
	|   └── header.html # 顶部菜单栏
	|   └── pageNav.html # 文章列表分页组件
	├── _layouts # 布局模板
	|   ├── default.html # 默认模板
	|   └── post.html # 文章页面模板
	├── _posts # 这里放文章
	|   ├── 2017-05-03-elements-of-javascript-style.md # 命名格式：年-月-日-文章标题.md
	|   └── 2007-02-21-life-on-mars.md
	├── _site # Jekyll将源码处理后生成的站点文件，里面的内容可直接发布
	├── assets # 存放用于线上环境的静态资源，如需修改css和js文件请到dev文件夹
	|   ├── css # dev文件夹中sass编译后的样式文件
	|   └── fonts # 字体文件
	|   └── icons # 图标文件
	|   └── img #  图片文件
	|   └── js # dev文件夹中处理后的脚本文件
	├── dev # 开发文件
	|   ├── js # 存放脚本源码
	|   └── sass # 样式源码
	|       └── app.scss # 整合下面的所有样式文件
	|       └── base.scss # 引入字体、Reset部分样式
	|       └── common.scss # 模板的主要样式
	|       └── helper.scss # 工具样式
	|       └── layouts.scss # 响应式布局
	└── gulpfile.js # 自动化任务脚本
	└── index.html # 模板首页
	└── tags.html # 标签页面
	└── 404.html # 404页面
	└── package.json # 管理项目的依赖项
```

值得注意的是，css及js的源码都在 `dev` 文件夹中，每一次保存 gulp 都会对它们进行处理并保存到 `assets` 文件夹以供 `_site` 上线环境使用。

#### Disqus

[Disqus](https://disqus.com/)是一个第三方社交评论插件，体验相当不错。

在配置文件 `_config.yml` 中找到comments的相关配置，设置 `disqus` 参数为 `true` 打开评论功能（ `false` 为关闭），并且设置 `disqus_url`。

```
# Comments
comments:
	disqus: true
	disqus_url: 'https://your-disqus-username.disqus.com/embed.js'
```

Note: The default value of `disqus` is `false`

#### Share.js

In order to make the article more convenient to share, the third-party sharing plugin [Share.js] (http://overtrue.me/share.js/) is used to support one-button sharing to Weibo, QQ Space, QQ Friends, Wechat, etc. Tencent Weibo, Douban, Facebook, Twitter, Linkedin, Google+, and other social networking sites.

```
# Share
Social-share: true # Turn sharing on or off
Social-share-items: ['wechat', 'weibo', 'douban','twitter']
```

### Contribution Contribution

Any types of contribution are welcome. Thanks.

Accept various forms of contributions, including not limited to submitting questions and requirements, fixing code. Waiting for your ```Pull Request```

#### Thanks for participating in code contribution partners

- [Ray-Eldath] (https://github.com/Ray-Eldath)
- [sctop](https://github.com/sctop)
- [bananaappletw] (https://github.com/bananaappletw)
- [moycat] (https://github.com/moycat)

### License License
Jekyll-Theme-H2O is licensed under [MIT] (https://github.com/kaeyleo/jekyll-theme-H2O/blob/master/LICENSE).
