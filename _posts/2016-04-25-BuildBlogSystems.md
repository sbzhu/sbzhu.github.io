---
layout:     post
title:      "Build your own blog system"
subtitle:   "Using jekyll and Github pages"
date:       2016-04-25 17:00:00
author:     "abelzhu"
header-img: "img/post-bg-unix-linux.jpg"
catalog: true
tags:
    - jekyll 
    - Github 
    - ubuntu 
    - blog 
---

---

# Create new repository
You'll need to create a repository named <strong>username.github.io</strong>. 
The <strong>username</strong> must be your github name.
So as my repository *sbzhu.github.io*

![Create new repository](http://upload-images.jianshu.io/upload_images/1965578-92aca401485b4df5.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

---

# Clone your new repository to local disk 
    git clone git@github.com:/sbzhu/sbzhu.github.io
Then a director named .git is about here.

---

# Get other's jekyll template
You can get jekyll template from website like [jekyll themes](http://jekyllthemes.org/) or just simply clone one from others github like this:
+ clone template jekyll to local

      git clone https://github.com/sbzhu/huxpro.github.io.git
Then you'll get a director named *huxpro.github.io.git*
+ Run this jekyll on localhost

      cd huxpro.github.io.git
      jekyll build
      jekyll serve
+ browse it with site : *http://localhost:4000*

---

# Add template jekyll project
    cp -r huxpro.github.io.git/!(.git) sbzhu.github.io/

---

# Push this repository to github
    git add -A
    git commit -m 'initial version'
    git push origin master

---

# Enjoy you Github pages
Visit the website *www.sbzhu.github.io*

![](http://upload-images.jianshu.io/upload_images/1965578-5f85cecae121b893.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

***
***

+ [Reference 1](http://m.blog.csdn.net/article/details?id=51167883)
+ [A good template of jekyll repository](https://github.com/sbzhu/huxpro.github.io)
