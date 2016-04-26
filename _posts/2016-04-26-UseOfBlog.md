---
layout: post
section-type: post
title:  定制博客 
category: tech
tags: [ 'tutorial', 'jekyll', 'blog' ]
---

除了定制_config.yml文件，另外再提一些东西
### 目录说明
_include/ 下是网页各个子部分
_layouts/ 下是各个大部分对小之部分的组合

### css 样式
一般以class的方式定义在css文件中，例如about.html文件中有如下代码：

	<section id="{{ page.section-type }}" class="container content-section text-center">
	  <div class="row">
		<div class="col-md-10 col-md-offset-1">
		  {{ page.content | markdownify }}
		</div>
	  </div>
	</section>
*text-center* 字体居中

### 背景色
+ _sass/_variables.scss 中定义背景色、字体颜色
+ 可以包含背景图片。参考 _includes/header.html 即首页使用intro属性
![](http://upload-images.jianshu.io/upload_images/1965578-c9c0761c80d10fec.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

### 调试方法
建议使用chrome浏览器，按F12调试网页，可以在线修改网页属性看效果

### 博客发布
+ 如果在Windows下编写markdown博客，
推荐使用 [简书](http://www.jianshu.com/) + Winscp + notpad++ 的组合
![](http://upload-images.jianshu.io/upload_images/1965578-6cdd1aa72eae1d95.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
注意必须Windows下必须使用notepad++编辑并保存为*UTF-无BOM*格式，否者会编译不通过。

+ 项目根目录有个脚本*build-push.sh*，可以用于一键发布

      ./build-push.sh
