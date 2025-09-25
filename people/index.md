---
title: People
nav:
  order: 1
  tooltip: About our team
---

# {% include icon.html icon="fa-solid fa-people-group" %}


# Faculty 
{% include list.html data="members" component="faculty" filters="role: faculty" %}

{% include list.html data="members" component="faculty" filters="role: future" %}
{% include section.html %}

# Researchers

{% include portrait.html name="Moshe Gabel" role="research-associate" image="images/moshe.webp" content=" " %}
{% include portrait.html name="Christina Christodoulakis" role="postdoc" image="images/christinac.webp" content="" %}
{% include portrait.html name="Christina Giannoula" role="postdoc" image="images/christinag.webp" content="" %}

{% comment %}
{% include list.html data="members" component="portrait" filters="role: research-associate" %}
{% include list.html data="members" component="portrait" filters="role: postdoc" %}
{% endcomment %}

{% include section.html %}
# Graduate Students

{% include portrait.html name="Adrian Zhao" role="phd" image="images/adrian.webp" content="" %}
{% include portrait.html name="Alireza Shateri" role="phd" image="images/alireza.webp" content="" %}
{% include portrait.html name="Anand Jayarajan" role="phd" image="images/anand.webp" content="" %}
{% include portrait.html name="Andreas Burger" role="phd" image="images/andreas.webp" content="" %}
{% include portrait.html name="Brian Ramprasad" role="phd" image="images/brianr.webp" content=" " %}
{% include portrait.html name="Egil Karlsen" role="phd" image="images/egil.webp" content="" %}
{% include portrait.html name="Gavin Guan" role="phd" image="images/gavin.webp" content="" %}
{% include portrait.html name="Guy Khazma" role="phd" image="images/guy.webp" content=" " %}
{% include portrait.html name="Jason (Jiasheng) Hu" role="phd" image="images/jiasheng.webp" content="" %}
{% include portrait.html name="Kai Shen" role="phd" image="images/kai.jpg" content=" " %}
{% include portrait.html name="Kevin Song" role="phd" image="images/kevin.webp" content="" %}
{% include portrait.html name="Mohammadreza Mofayezi" role="phd" image="images/mohammadreza.webp" content="" %}
{% include portrait.html name="Myles Thiessen" role="phd" image="images/myles.webp" content=" Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. " %}
{% include portrait.html name="Navid Eslami" role="phd" image="images/navid.webp" content=" " %}
{% include portrait.html name="Pawan Kumar Sanjaya" role="phd" image="images/pawan.webp" content="" %}
{% include portrait.html name="Pritish Mishra" role="phd" image="images/pritish.webp" content=" " %}
{% include portrait.html name="Renbo Tu" role="phd" image="images/renbo-30p.webp" content="" %}
{% include portrait.html name="Ruofan Liang" role="phd" image="images/ruofan.webp" content="" %}
{% include portrait.html name="Sajad Faghfoor Maghrebi" role="phd" image="images/sajad.webp" content=" " %}
{% include portrait.html name="Salaar Liaqat" role="phd" image="images/salaar.webp" content=" " %}
{% include portrait.html name="Sankeerth Durvasula" role="phd" image="images/sankeerth.webp" content="" %}
{% include portrait.html name="Sejal Bhalla" role="phd" image="images/sejal.webp" content="" %}
{% include portrait.html name="Shaopeng Lin" role="phd" image="images/shaopeng.webp" content="" %}
{% include portrait.html name="Shikhar Jaiwal" role="phd" image="images/shikhar-jaiswal.webp" content="" %}
{% include portrait.html name="Yu Bo Gao" role="phd" image="images/yu.webp" content="" %}
{% include portrait.html name="Zechen Ma" role="phd" image="images/zechen.webp" content="" %}


{% include section.html %}

{% include portrait.html name="Christian Tabbah" role="masters" image="images/christian.webp" content="" %}
{% include portrait.html name="Felix Zhang" role="masters" image="images/felixzhang.jpeg" content="" %}
{% include portrait.html name="Filip Grigorov" role="masters" image="images/filip.webp" content="" %}
{% include portrait.html name="Nika Mosayebibehrooz" role="masters" image="images/nika.webp" content="" %}
{% comment %}
{% include list.html data="members" component="portrait" filters="role: phd, group: current" %}
{% include list.html data="members" component="portrait" filters="role: masters, group: current" %}
{% endcomment %}

{% include section.html %}
# Recent Alumni

{% include portrait.html name="Akshay Arun Bapat" role="alumphd" image="images/akshay-bapat.webp" content=" " %}
{% include portrait.html name="Alexey Khrabrov" role="alum-phd" image="images/alexey.webp" content=" " %}
{% include portrait.html name="Brian Fu" role="alum-phd" image="images/brianfu.webp" content=" " %}
{% include portrait.html name="Sahar Sheikholeslami" role="alum-masters" image="images/sahar.webp" content="" %}
<!--
{% include list.html data="members" component="portrait" filters="role: alum-phd" %}
{% include list.html data="members" component="portrait" filters="role: alum-masters" %}
{% include section.html background="images/background.jpg" dark=true %}
-->


{% include section.html %}

{% capture content %}

{% endcapture %}

{% include grid.html style="square" content=content %}
