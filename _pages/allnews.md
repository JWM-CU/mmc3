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
<div>
{% for article in site.data.news %} 
    <b>{{ article.date }}</b>

    {{ article.headline }}
{% endfor %}
</div>
