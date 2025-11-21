---
title: "Home"
layout: homelay
sitemap: false
permalink: /
---

{% for member in site.data.pi %}
{% if member.mmc_link %} <a href="{{ member.mmc_link }}" target="_blank" class="larger-link">iLab Link for Reservations </a> {% endif %}

<a href="{{ '/assets/facilities/990_demo.pdf' | relative_url }}" 
   target="_blank" 
   class="larger-link">
   MON NOV 24TH: ZEISS 99O SEMINAR AND DEMONSTRATION INFORMATION
</a>


### MMC Instruments


* DMi 1, Leica DMi8 inverted fluorescence tissue scanning, deconvolution microscope

* DMi 2, Leica DMi8 inverted fluorescence tissue scanning microscope

* Live Imaging System Zeiss Axio Observer.Z1 with Apotome 2

* Light Sheet and confocal microscope

* Zeiss LSM 710 Confocal. 6 laser lines, 3 detectors

* Leica Stellaris 8 Confocal. White Light Laser (multiplex imaging), Lightning deconvolution, lifetime imaging, live imaging

* Seahorse metabolic analysis

<!-- </div>
-->

<!-- I can add font size like this here:
<p style="font-size:40px;">
</p>
-->

<div class="jumbotron" style="font-size:20px;">  
### Overview of Services

<p>The Medicine Microscopy Core (MMC) provides a user-friendly, cutting-edge fluorescence microscopy imaging environment for the Columbia Medical Center in Upper Manhattan. We also provide image analysis tools, such as Leica Aivia 3D machine learning software and an Acquifer HIVE computer server and workstation. We are happy to collaborate with your imaging and image analysis projects and can provide software, custom scripting, and custom acquistion pipelines.</p> <br/>
Click on the tabs (or icon lines) above to explore the microscopes.
</div>

<div class="container">
<div class="row">
<center>
<img src="{{ site.url }}{{ site.baseurl }}/images/MMC_828.jpg" width="100%"/><br/>
Primary imaging room. Black Building, room 828.  <br/>
<br/>
<div>
<div>

{% endfor %}

<!-- </center> -->
<!-- 
<div class="jumbotron-clear">
<!-- <h4>Links and User Guide</h4>
<div style='display:block; text-align:left; margin-left:auto; margin-right:auto;'>


<div class="jumbotron-clear">
    <div style='display: flex; flex-wrap: wrap; justify-content: center; align-items: center; gap: 4%;'>
{% for link in site.data.home-links %}<a href="{{ link.url }}" target="_blank"><img src='{{ site.url }}{{ site.baseurl }}/images/{{ link.image }}' style='max-height: 80px; max-width: 200px; margin: 5%'/></a>
{% endfor %}
<div>
<div>

-->




