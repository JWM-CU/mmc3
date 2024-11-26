---
title: "Live-imaging"
layout: gridlay
sitemap: false
permalink: /live-imaging/
---
<div class="jumbotron" style="font-size:20px;"> 
## Live Imaging Zeiss Axio Observer.Z1 Information

* Zeiss Axio Observer.Z1 wide field microscope with Apotome, High speed imaging, Zen Blue Software, and 5 fluorescence channels.

* Mutiplex imaging with 6 chanels: DAPI, CFP, EGFP, DsRed, Cy5, Brightfield. 

* Excellent Zeiss optics.

* Objective lenses: 5X, 10x, 20x long distance (collar), 20X, 63x Oil 1.4NA, 63X water 1.2NA. 

* Located in room VP&S 8-508B.
</div>

<img src="{{ site.url }}{{ site.baseurl }}/images/live-imaging-sys.jpg" width="60%"/>

Layout of the Zeiss 710 system, room 828.
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

#### Links and User Guide
<div style='display:block; text-align:left; margin-left:auto; margin-right:auto;'>
{% for link in site.data.z710-links %}<a href="{{ link.url }}" target="_blank"><img src='{{ site.url }}{{ site.baseurl }}/images/{{ link.image }}' style='max-height: 80px; max-width: 200px; margin: 2%'/></a>{% endfor %}
</div>
</div>

