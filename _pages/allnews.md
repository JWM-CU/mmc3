---
title: "News"
layout: textlay
sitemap: false
permalink: /allnews.html/
---

## News

<!-- <div class="jumbotron"> -->
<!-- <div class="jumbotron custom-news-font"> -->
<!-- <div class="jumbotron-sm"> -->
<!-- <div> -->


<div class="jumbotron">
{% for article in site.data.news %} 
<b>{{ article.date }}</b><br>
{{ article.headline }}
{% endfor %}
</div>




