---
title: "Lightsheet"
layout: gridlay
sitemap: false
permalink: /lightsheet/
---


<div class="jumbotron" style="font-size:20px;"> 

## Light Sheet (DLS SP8) Microscope Information
* Functions as both a Confocal and Light Sheet microscope.
</div>
<div class="jumbotron" style="font-size:20px;"> 


## Confocal mode

* Leica SP8 confocal with 4 laser lines, 4 detectors.

* Mutiplex imaging, laser lines at 405, 488, 552, 638 nm. 

* Leica Navigator for slide scanning

* Objective lenses: 1.6X, 2.5X, 10X, 20X, 40X Oil 1.3NA, 63x Oil 1.4NA.
</div>

<div class="jumbotron" style="font-size:20px;"> 

## Light Sheet mode

* Four fluorescence channel Z-scanning and imaging using a digital light sheet (DLS).
  - <p>The channels are DAPI, GFP, Alexa 555, Alexa 647 (or equivalent)</p>

* Light sheet imaging allows high contrast, beautiful 3D images of whole mount preparations.<br/>

* Advantages of light sheet imaging include:
  - Very fast Z-scanning
  - Very low photobleaching
  - <p>Images through thick samples (milimeter range) </p>
  - Excellent for 3 dimensional imaging of tissues that are too large or thick for confocal imaging
  - Typically involves optical clearing 

* Objective lenses: 10X, 20X, 40X Oil 1.4NA, 63x Oil 1.4NA.
* Located in room 828.
</div>
<br/>

<img src="{{ site.url }}{{ site.baseurl }}/images/dls-sys.jpg" width="60%"/>

Layout of the Light Sheet system, room 828.
<br/>
<br/>

<!--
{% for member in site.data.pi %}
<div class="jumbotron">
<div class="row">
<div class="col-sm-4">
  <img src="{{ site.url }}{{ site.baseurl }}/images/{{ member.photo }}" width="100%" style="max-width:250px"/>
</div>
<div class="col-sm-8 col-xs-12">
  <h3>{{ member.name }}</h3>
  <h4><i>{{ member.info }}</i></h4>
  {% if member.email %}<a href="mailto:{{ member.email }}" target="_blank"><i class="fa fa-envelope-square fa-3x"></i></a> {% endif %}
  {% if member.cv %} <a href="{{ site.url }}{{ site.baseurl }}/{{ member.cv }}" target="_blank"><i class="ai ai-cv-square ai-3x"></i></a> {% endif %}
  {% if member.scholar %} <a href="{{ member.scholar }}" target="_blank"><i class="ai ai-google-scholar-square ai-3x"></i></a> {% endif %}
  {% if member.github %} <a href="{{ member.github }}" target="_blank"><i class="fa fa-github-square fa-3x"></i></a> {% endif %}
  {% if member.researchgate %} <a href="{{ member.researchgate }}" target="_blank"><i class="ai ai-researchgate-square ai-3x"></i></a> {% endif %}

  <ul style="overflow: hidden">
  {% if member.number_educ == 1 %}
  <li> {{ member.education1 | replace: "-","&#8211;"}} </li>
  {% endif %}
  {% if member.number_educ == 2 %}
  <li> {{ member.education1 | replace: "-","&#8211;"}} </li>
  <li> {{ member.education2 | replace: "-","&#8211;"}} </li>
  {% endif %}
  {% if member.number_educ == 3 %}
  <li> {{ member.education1 | replace: "-","&#8211;"}} </li>
  <li> {{ member.education2 | replace: "-","&#8211;"}} </li>
  <li> {{ member.education3 | replace: "-","&#8211;"}} </li>
  {% endif %}
  {% if member.number_educ == 4 %}
  <li> {{ member.education1 | replace: "-","&#8211;"}} </li>
  <li> {{ member.education2 | replace: "-","&#8211;"}} </li>
  <li> {{ member.education3 | replace: "-","&#8211;"}} </li>
  <li> {{ member.education4 | replace: "-","&#8211;"}} </li>
  {% endif %}
  {% if member.number_educ == 5 %}
  <li> {{ member.education1 | replace: "-","&#8211;"}} </li>
  <li> {{ member.education2 | replace: "-","&#8211;"}} </li>
  <li> {{ member.education3 | replace: "-","&#8211;"}} </li>
  <li> {{ member.education4 | replace: "-","&#8211;"}} </li>
  <li> {{ member.education5 | replace: "-","&#8211;"}} </li>
  {% endif %}
  {% if member.number_educ == 6 %}
  <li> {{ member.education1 | replace: "-","&#8211;"}} </li>
  <li> {{ member.education2 | replace: "-","&#8211;"}} </li>
  <li> {{ member.education3 | replace: "-","&#8211;"}} </li>
  <li> {{ member.education4 | replace: "-","&#8211;"}} </li>
  <li> {{ member.education5 | replace: "-","&#8211;"}} </li>
  <li> {{ member.education6 | replace: "-","&#8211;"}} </li>
  {% endif %}
  </ul>
  
</div>
</div>
</div>
{% endfor %}

{% if site.data.grants %}
<div class="jumbotron">
### Grants
<ul>
{% for grant in site.data.grants %}
 <li> {{ grant.name }} </li>
{% endfor %}
</ul>
</div>
{% endif %}


{% if site.data.awards %}
<div class="jumbotron">
### Awards
<ul>
{% for award in site.data.awards %}
 <li> {{ award.name | replace: "-","&#8211;"}} </li>
{% endfor %}
</ul>
</div>
{% endif %}

{% if site.data.people %}
<div class="jumbotron">
### Students and mentoring
<ul>
{% for student in site.data.people %}
 <li> {{ student.name }}, {{student.location}} ({{student.degree}}, {{student.year}}) </li>
{% endfor %}
</ul>
</div>
{% endif %}

-->


<div class="jumbotron-clear">

#### *Confocal* Links and User Guide 
<div style='display:block; text-align:left; margin-left:auto; margin-right:auto;'>
{% for link in site.data.dls-con-links %}<a href="{{ link.url }}" target="_blank"><img src='{{ site.url }}{{ site.baseurl }}/images/{{ link.image }}' style='max-height: 80px; max-width: 200px; margin: 2%'/></a>{% endfor %}
</div>
</div>


<div class="jumbotron-clear">

#### *Light Sheet* Links and User Guide 
<div style='display:block; text-align:left; margin-left:auto; margin-right:auto;'>
{% for link in site.data.dls-lightsheet-links %}<a href="{{ link.url }}" target="_blank"><img src='{{ site.url }}{{ site.baseurl }}/images/{{ link.image }}' style='max-height: 80px; max-width: 200px; margin: 2%'/></a>{% endfor %}
</div>
