---
title: Contact
nav:
  order: 5
  tooltip: Email, address, and location
---

# {% include icon.html icon="fa-regular fa-envelope" %}Contact

Our group is part of the [Dept. of Computer Science](https://web.cs.toronto.edu/) in [University of Toronto](https://utoronto.ca) located at the Bahen Centre for Information Technology, 40 St. George St. in Toronto, Ontario.

{%
  include button.html
  type="email"
  text="sysnetcontact@cs.toronto.edu"
  link="sysnetcontact@cs.toronto.edu"
%}
{%
  include button.html
  type="phone"
  text="(555) 867-5309"
  link="+1-555-867-5309"
%}
{%
  include button.html
  type="address"
  tooltip="Our location on Google Maps for easy navigation"
  link="https://www.google.com/maps?f=q&hl=en&geocode&q=40+St+George+St,+Toronto,+ON&sll=43.659988,-79.396748&sspn=0.006753,0.012821&ie=UTF8&ll=43.664457,-79.395103&spn=0.012418,0.042915&z=14&source=embed"
%}

{% include section.html %}
{% capture col1 %}
{% include figure.html image="images/bahen.jpg" caption="Bahen Centre for Information Technology" width="500px" %}
{% endcapture %}


{% capture col2 %}
{% include figure.html image="images/bahen-atrium.png" caption="Bahen Centre Atrium" width="500px" %}
{% endcapture %}

{% include cols.html col1=col1 col2=col2 %}



{% include section.html dark=true %}

{% capture col1 %}
{% endcapture %}

{% capture col2 %}
{% endcapture %}

{% capture col3 %}
{% endcapture %}

{% include cols.html col1=col1 col2=col2 col3=col3 %}
