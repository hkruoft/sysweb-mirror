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


{% include list.html data="members" component="portrait" filters="role: research-associate" %}
{% include list.html data="members" component="portrait" filters="role: postdoc" %}

{% include section.html %}
# Graduate Students

{% include list.html data="members" component="portrait" filters="role: phd, group: current" %}
{% include list.html data="members" component="portrait" filters="role: masters, group: current" %}


{% include section.html %}
# Alumni
{% include list.html data="members" component="portrait" filters="role: alum-phd" %}
{% include list.html data="members" component="portrait" filters="role: alum-masters" %}
{% include section.html background="images/background.jpg" dark=true %}



{% include section.html %}

{% capture content %}

{% endcapture %}

{% include grid.html style="square" content=content %}
