---
layout:     post
title:      "Install jekyll"
subtitle:   "On Ubuntu system"
date:       2016-04-25 12:00:00
author:     "abelzhu"
header-img: "img/post-bg-2015.jpg"
catalog: true
tags:
    - jekyll
    - blog 
    - ubuntu
    - linux
---

[jekyll official website](http://jekyll.bootcss.com/)

# Install Ruby

We  can directly use *gem* to install Ruby，but Ruby on ubuntu14.14 are at 1.9 version, higher than 2.2 version is expected.

* [download  ruby package](http://rubyinstaller.org/downloads/).I chosed the version 2.3.0.
Clicke the link to download it or use wget :

      wget https://cache.ruby-lang.org/pub/ruby/2.3/ruby-2.3.0.tar.gz

* utar it to /opt/ 

      tar -xvfz ruby-2.3.0.tar.gz

* change workdir to ruby-2.3.0，configure， make， make install

      ./configure
      make
      sudo make install

* Check the installed version 

      $ /opt/ruby-2.3.0$ ruby -v      

> ruby 2.3.0p0 (2015-12-25 revision 53290) [x86_64-linux]

# Install jekyll

    sudo gem install jekyll

May there be some error :

> ERROR:  Loading command: update (LoadError)
cannot load such file -- zlib
ERROR:  While executing gem ... (NoMethodError)
undefined method `invoke_with_build_args' for nil:NilClass

Get into ruby-xx/ext/zlib/ , run the command below:

    ruby extconf.rb
    make
    sudo make install

And we may meet other problem, Install sql related package:

    sudo apt-get install libmysqlclient-dev

if still be error like:

> ERROR:  While executing gem ... (Gem::Exception)
Unable to require openssl, install OpenSSL and rebuild ruby (preferred) or use non-HTTPS sources

run the command below:

    gem source -r https://rubygems.org/
    gem source -a http://rubygems.org/

Then install jekyll

    sudo gem install jekyll

# Check version

after that, check the jekyll version

    jekyll -v

> Jekyll 3.1.3
