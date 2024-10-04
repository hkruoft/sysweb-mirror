---
title: People
nav:
  order: 2
  tooltip: About our team
---

# {% include icon.html icon="fa-solid fa-people-group" %}People

{% include section.html %}

# Faculty 
{% include list.html data="members" component="faculty" filters="role: faculty" %}


{% include list.html data="members" component="faculty" filters="role: future" %}
{% include section.html %}

# Postdoc

{% include list.html data="members" component="faculty" filters="role: postdoc" %}

{% include section.html %}
# Graduate Students

{% include list.html data="members" component="portrait" filters="role: phd, group: current" %}
{% include list.html data="members" component="portrait" filters="role: masters, group: current" %}


{% include section.html %}
# Alumni
{% include list.html data="members" component="portrait" filters="role: alum-phd" %}
{% include list.html data="members" component="portrait" filters="role: alum-masters" %}
{% include section.html background="images/background.jpg" dark=true %}

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis
nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.

{% include section.html %}

{% capture content %}

{% include figure.html image="images/photo.jpg" %}
{% include figure.html image="images/photo.jpg" %}
{% include figure.html image="images/photo.jpg" %}

{% endcapture %}

{% include grid.html style="square" content=content %}
