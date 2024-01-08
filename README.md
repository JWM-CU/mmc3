## This website was forked from Spencer Bryngelson. 
https://github.com/sbryngelson/academic-website-template 
## Thank you Spencer!

Many of the comments below are from his website, and you can refer to his website for information, and perhaps a cleaner template for building your own website. There's considerable left over material from his page that has not been deleted.

## Introduction 

This is a statically-generated Jekyll/Liquid/Bootstrap-based website used for an academic microscopy lab. This means that Jekyll, a Ruby gem, is needed to generate the static website from the markdown and other content files. It uses Liquid and Bootstrap syntax to render the static site. I avoided many of the buttons from Spencer's site, such as the DOI/PDF/ARXIV/BIB/Abstract buttons and Jekyll Scholar and bibliography information.

You may fork and customize this website, but Spencer's original website might be more helpful.
To fork and run, you will typically need to:
* fork and copy files to your local computer (use github desktop and visual studio code).
* Install [Jekyll](https://jekyllrb.com/docs/installation/) which requires installation of Ruby.
* Run `$ bundle exec jekyll serve` by command line your repository root directory.
This creates/modifies the new "_site" folder that is your static website.
* Your site is now hosted locally at `localhost:4000`, which you can input as a URL into your web browser.
* Many changes will be automatically re-built into the website when you save changes to your files.
You may need to refresh your browser or run incognito mode to see website changes (browsers default to the cached files, so there can be a delay seeing the changes).

### Github pages

You can host your site for free at Github pages [Github Pages](https://pages.github.com/)]. This will provide a free domain name at something like: https://<your_username>.github.io/<your_repository>.

https://github.com/JWM-CU/mmc3
Follow github and github pages instructions.
Typically, you create a public repository on your Github and upload your cloned files there via github desktop (i.e. fork from github, clone to local computer, modify, and upload back to github).
If you haven't used github before, you will have to learn how to use it and github desktop to some degree including generating an SSH Key or Use HTTPS for Authentication (connecting /verifying your local computer to the github website). When you "commit to main" in github desktop, github will try to build the webpage at `_site/` using its own version of Jekyl, so the 'bundle/jekyll' commands are not involved in github pages.

# Use of Rakefile and the command line 'rake publish':
  NOTE, github's internal Jekyl probably won't work for this webpage. In which case you'll need to build the webpage on github using the command line command:  'rake publish'. This force builds the site on github using code in the 'Rakefile' that is located in the root directory.
  First, edit Rakefile to direct it towards your github repository. I believe I only needed to modify the line:
  system "git remote add origin git@github.com:<account_name>/<repository_name>.git"
  Once you have saved this (and commit to main), you can run `rake publish` from the command line and it should build the website to the "master" branch of the github page, because of the code:  system "git push origin master --force".

  Once rake publish runs, go to your Github page, go to the "actions" tab and wait for a change from yellow to green arrow, incidating your page has been built/deployed. Then on Github go to Settings > Pages (on lower left). Choose proper settings: deploy from branch, master. Github Pages should eventually (minutes) display "your site is live at" with your repository and github.io name.

### Custom domain names

You can use a domain service such as Cloudflare to purchase a domain name and perform DNS management. Search for instructions for this. You will need to add records for the domain name such as an "A" record with IP addres (find IP address in command line with: nslookup <account_name>.github.io and a CNAME record with www <account_name>.github.io.


## Modify the website to create your own website

* _config.yml contains:
- the URL which should be final domain name
- names of the nav_pages, which are the tabs to click to other pages
- a lot of other info on the main page
* _data contains .yml files such as links and people
* _includes contains formatting
* _layouts contains formatting
* _pages contains .md files containing much of the text and markup of for different pages (e.g. nav pages).
* _sass contains text style. Bootstrap styles and two custom .scss (SHB and custom) 
* assets contains external files such as pdfs
* images contains images and logos


#### Page header information

Pages require header information.
Example header data for the 'Talks' page is below.
```
---
title: "Talks"
layout: gridlay
sitemap: false
permalink: /talks/
---
```
The `layout` variable corresponds to HTML layouts in the `_layouts` directory.
The differences between most layouts is subtle and `gridlay` can generally be used.
The permalink must be unique for each page, and corresponds to the directory that will store the page in the compiled HTML. Refer to your pages in `_config.yml` via the `title` variable.

## License
Copyright 2021 Spencer H. Bryngelson and controlled via the MIT license.
Copyright 2023 John W. Murray. Webpage was forked and modified with changes in content, themes, and styles. 

