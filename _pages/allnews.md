---
title: "News"
layout: textlay
sitemap: false
permalink: /allnews.html
---

## News

<!-- <div class="jumbotron custom-news-font"> -->
<div class="jumbotron-sm">
  {% for article in site.data.news %} 
<b>{{ article.date }}</b>

{{ article.headline }}
{% endfor %}
</div>
