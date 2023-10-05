---
title: "software-resources"
layout: gridlay
sitemap: false
permalink: /software-resources/
---

<br/>
#### Image viewer and analysis software


<div class="software-links-container">

{% for link in site.data.software-links %}
<div class="col-lg-4 col-md-6 col-sm-12 text-center icon-container">
<a href="{{ link.url }}" target="_blank">
<img src='{{ site.url }}{{ site.baseurl }}/images/{{ link.image }}' class="icon-image"/>
<p class="icon-description">{{ link.description }}</p>
</div>
{% endfor %}

</div>

<br/>
#### Open Source image analysis software

<div class="software-links-container">

{% for link in site.data.software-open-s %}
<div class="col-lg-4 col-md-6 col-sm-12 text-center icon-container">
<a href="{{ link.url }}" target="_blank">
<img src='{{ site.url }}{{ site.baseurl }}/images/{{ link.image }}' class="icon-image"/>
<p class="icon-description">{{ link.description }}</p>
</div>
{% endfor %}

</div>

<br/>
#### Additional resources for microscopy and image analysis

<div class="software-links-container">

{% for link in site.data.image-help %}
<div class="col-lg-4 col-md-6 col-sm-12 text-center icon-container">
<a href="{{ link.url }}" target="_blank">
<img src='{{ site.url }}{{ site.baseurl }}/images/{{ link.image }}' class="icon-image"/>
<p class="icon-description">{{ link.description }}</p>
</div>
{% endfor %}

</div>

<br/>
#### Macros written for Imagej
##### (click icon, then right click and save with .ijm extension OR copy-paste into ImageJ text editor and save)

<div class="software-links-container">

{% for link in site.data.macros %}
<div class="col-lg-4 col-md-6 col-sm-12 text-center icon-container">
<a href="{{ link.url }}" target="_blank">
<img src='{{ site.url }}{{ site.baseurl }}/images/{{ link.image }}' class="icon-image"/>
<p class="icon-description">{{ link.description }}</p>
</div>
{% endfor %}

</div>
