---
title: "About"
layout: gridlay
sitemap: false
permalink: /about/
---

{% for member in site.data.pi %}
<div class="jumbotron">

## About 
<br/>
<div class="row">
<div class="col-sm-4">
<img class="no-shadow" src="{{ site.url }}{{ site.baseurl }}/images/{{ member.photo }}" width="100%" style="max-width:250px"/>
</div>
<div class="col-sm-8 col-xs-12">
  
<!--
  <h3>{{ member.name }}</h3>
  <h4><i>{{ member.info }}</i></h4>
  {% if member.email %}<a href="mailto:{{ member.email }}" target="_blank"><i class="fa fa-envelope-square fa-3x"></i></a> {% endif %}
  {% if member.cv %} <a href="{{ site.url }}{{ site.baseurl }}/{{ member.cv }}" target="_blank"><i class="ai ai-cv-square ai-3x"></i></a> {% endif %}
  {% if member.scholar %} <a href="{{ member.scholar }}" target="_blank"><i class="ai ai-google-scholar-square ai-3x"></i></a> {% endif %}
  {% if member.github %} <a href="{{ member.github }}" target="_blank"><i class="fa fa-github-square fa-3x"></i></a> {% endif %}
  {% if member.researchgate %} <a href="{{ member.researchgate }}" target="_blank"><i class="ai ai-researchgate-square ai-3x"></i></a> {% endif %}
  {% if member.mmc_link %} <a href="{{ member.mmc_link }}" target="_blank"> MMC core link </a> {% endif %}
-->

  {% if member.mmc_link %} <a href="{{ member.mmc_link }}" target="_blank" class="larger-link">iLab Link for Reservations and Info </a> {% endif %}
  <br/>
  

 <!-- Creation of links using assign and liquid links e.g. {{ cchd_link.name }} --> 
 {% assign dept_med = "Department of Medicine" %}
 {% assign dmed_link = site.data.home-links | where: "name", dept_med | first %}
 
 {% assign cchd = "Columbia Center for Human Development" %}
 {% assign cchd_link = site.data.home-links | where: "name", cchd | first %}

 {% assign csct = "Columbia Center for Stem Cell Therapies" %}
 {% assign csct_link = site.data.home-links | where: "name", csct | first %}
 
 {% assign mmc = "Columbia Medicine Microscopy Core (MMC)" %}
 {% assign mmc_link = site.data.home-links | where: "name", mmc | first %}

  <p>The Medicine Microscopy Core (MMC) is a confocal and wide field microscopy core available by reservation through the iLab system. We are part of the <a href="{{ cchd_link.url }}" target="_blank" rel="noopener noreferrer">{{ cchd_link.name }}</a>, the <a href="{{ csct_link.url }}" target="_blank" rel="noopener noreferrer">{{ csct_link.name }}</a> and also the <a href="{{ dmed_link.url }}" target="_blank" rel="noopener noreferrer">{{ dmed_link.name }}</a> and provide training, maintenance, and assitance with all instruments.  We specialize in tissue scanning and high resolution multi-channel fluorescence imaging welcome collaborations for custom imaging and analysis.</p>

  <p> We are located in the 8th Floor of the William Black Building<br/>
   Columbia University Irving Medical Center <br/>
   Columbia 650 West 168th Street<br/> 
   New York, NY 10032</p>

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

<div class="jumbotron" style="width: 40%; margin-left: 0; margin-right: auto;">
<img src="{{ site.url }}{{ site.baseurl }}/images/jwm-pic.jpg" width="60%" style="max-width:200px; display: block; margin-left: auto; margin-right: auto;" />
<h4 class="text-center" style="font-size:15px;">John W Murray, PhD <br/> Core Director </h4>
</div>

<!-- 
<div class="container">
<div class="row">
<center>

<div class="jumbotron-clear">
<!-- <h4>Links and User Guide</h4> 
<div style='display: flex; flex-wrap: wrap; justify-content: center; align-items: center; gap: 2%;'>
{% for link in site.data.home-links %}<a href="{{ link.url }}" target="_blank"><img src='{{ site.url }}{{ site.baseurl }}/images/{{ link.image }}' style='max-height: 80px; max-width: 200px; margin: 5%'/></a>{% endfor %}

</div>
</div>
</center>
</div>
</div>

-->

<!--
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

<!--
<div class="jumbotron">
  <h4>Sponsors</h4>
  <div style='display:block; text-align:center; margin-left:auto; margin-right:auto;'>
 {% for funder in site.data.funders %}<a href="{{ funder.url }}" target="_blank"><img src='{{ site.url }}{{ site.baseurl }}/images/{{ funder.image }}' style='max-height: 80px; max-width: 200px; margin: 1%'/></a>{% endfor %}
  </div>
</div>
-->
