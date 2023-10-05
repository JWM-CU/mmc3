---
title: "software-resources"
layout: gridlay
sitemap: false
permalink: /software-resources/
---

<br/>
#### Image Viewer and Analysis Software


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
#### Open Source Image analysis software


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
#### Links For Help with Imaging and Anaysis


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
##### (right click and save as with an .ijm extension OR copy-paste into ImageJ text editor and save)

<div class="software-links-container">

{% for link in site.data.macros %}
<div class="col-lg-4 col-md-6 col-sm-12 text-center icon-container">
<a href="{{ link.url }}" target="_blank">
<img src='{{ site.url }}{{ site.baseurl }}/images/{{ link.image }}' class="icon-image"/>
<p class="icon-description">{{ link.description }}</p>
</div>
{% endfor %}

</div>
