---
title: "Stellaris"
layout: gridlay
sitemap: false
permalink: /stellaris/
---

## Stellaris 8 Information
<br/>
* Leica confocal with fast laser scanning, Las X navigator, and 5 utra-sensitive HyD detectors.

* Mutiplex imaging with tunable White Light Laser (WLL) and tunable detectors. Choose any number of laser lines, any wavelengths to 790nm. We typically use up to **6 fluorescence channels**, potential for 8 or more.

* Lightning near super resolution deconvolution.

* TauSense easy to use fluorescence lifetime imaging : reduce background and detect different fluors based on their fluorescence lifetime.  

* Temperature and CO2 control for live imaging.

* Objective lenses: 10X, 20X, 25X immersion 0.95NA, 40X Oil 1.4NA, 63x Oil 1.4NA

<br/><br/>
<img src="{{ site.url }}{{ site.baseurl }}/images/stellaris-sys.jpg" width="70%"/>

Layout of the Stellaris 8 system, room 828.


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
<h4>LINKS</h4> 
<div style='display:block; text-align:left; margin-left:auto; margin-right:auto;'>
{% for link in site.data.stel-links %}<a href="{{ link.url }}" target="_blank"><img src='{{ site.url }}{{ site.baseurl }}/images/{{ link.image }}' style='max-height: 80px; max-width: 200px; margin: 5%'/></a>{% endfor %}
</div>
</div>


<!-- </div> -->
