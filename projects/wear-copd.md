---
title: "WearCOPD: Remote COPD Patient Monitoring"
---

# {% include icon.html icon="fa-solid fa-scroll" %} {{ page.title }}

## Description
Chronic obstructive pulmonary disease (COPD) is a prevalent and disabling chronic disease which incurs a high cost to health care system. Even with optimal treatment, people with COPD have high rates of hospital admission due to exacerbations of their disease. Currently, care provided to people with COPD is predominantly reactive and episodic. A better approach is needed. This project leverages mobile and wearable technology to detect when patients are deteriorating to enable proactive early interventions that prevent hospital admissions.

## Team

- [Hisham Alshaer](http://www.uhnresearch.ca/researchers/profile.php?lookup=57524)
- [Fanny Chevalier](https://www.cs.toronto.edu/~fchevali/fannydotnet/index.html)
- [Eyal de Lara](http://www.cs.toronto.edu/~delara)
- [Andrea Gershon](http://sunnybrook.ca/research/team/member.asp?t=11&page=172&m=418)
- [Alex Mariakakis](https://mariakakis.github.io/)
- [Frank Rudzicz](http://www.cs.toronto.edu/~frank/)
- Tatiana Son
- [Robert Wu](http://www.uhnresearch.ca/researcher/robert-wu)
 
- Pegah Abed-Esfahani
- [Sejal Bhalla](https://www.cs.toronto.edu/~sejal)
- [Moshe Gabel](https;//www.cs.toronto.edu/~mgabel)
- [Daniyal Liaqat](https://www.cs.toronto.edu/~dliaqat)
- [Salaar Liaqat](https://www.cs.toronto.edu/~sliaqat)
- Nicole Sultanum


## Sponsors
<div align="left" id="banner">
    <div class="inline-block">
    <a href="http://sunnybrook.ca/">
         <img src ="images/logo-sb-hsc.png" height="100px">
    </a>
    </div>
    <div class="inline-block">
    <a href="http://agewell-nce.ca/">
        <img src ="images/age-well_logo.png" height="100px">
    </a> 
    </div>
    <div class="inline-block">
    <a href="http://www.nserc.ca/">
        <img src ="images/nserc.jpg" height="100px">
    </a>
    </div>
    <div class="inline-block">
    <a href="http://http//www.cihr-irsc.gc.ca/e/193.html">
        <img src ="images/leaf-cihr-colour-portrait-en.jpg" height="100px">
    </a>
    </div>
</div>


## Publications

{% assign filtered_citations = site.data.citations | where: "tags", "INSERT-TAG" %}

{% if filtered_citations.size > 0 %}
  {% assign citations_with_dates = filtered_citations | map: "date" | uniq %}

  {% assign data = filtered_citations %}
  {% assign years = data | group_by_exp: "d", "d.date | date: '%Y'" | sort: "name" | reverse %}

  {% for year in years %}
    {% assign data = year.items %}

    {% for d in data %}
      {% include citation.html
        id=d.id
        title=d.title
        authors=d.authors
        publisher=d.publisher
        date=d.date
        link=d.link
        tags=d.tags
      %}
    {% endfor %}
  {% endfor %}
{% else %}
  <p>No publications found for this project.</p>
{% endif %}
