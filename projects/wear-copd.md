---
title: "WearCOPD: Remote COPD Patient Monitoring"
group: featured

---

# {% include icon.html icon="fa-solid fa-scroll" %} {{ page.title }}

## Description
Chronic obstructive pulmonary disease (COPD) is a prevalent and disabling chronic disease which incurs a high cost to health care system. Even with optimal treatment, people with COPD have high rates of hospital admission due to exacerbations of their disease. Currently, care provided to people with COPD is predominantly reactive and episodic. A better approach is needed. This project leverages mobile and wearable technology to detect when patients are deteriorating to enable proactive early interventions that prevent hospital admissions.

## Team

- [Hisham Alshaer](http://www.uhnresearch.ca/researchers/profile.php?lookup=57524)
- [Fanny Chevalier](https://www.cs.toronto.edu/~fchevali/)
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

[![image]({{ "/images/logo-sb-hsc.png" | relative_url }}){:width="250px"}](https://sunnybrook.ca)
[![image]({{ "/images/age-well_logo.png" | relative_url }}){:width="250px"}](https://agewell-nce.ca/)

[![image]({{ "/images/nserc.jpg" | relative_url }}){:width="250px"}](https://www.nserc-crsng.gc.ca/)
[![image]({{ "/images/leaf-cihr-colour-portrait-en.jpg" | relative_url }}){:width="250px"}](http://www.cihr-irsc.gc.ca/e/193.html)


## Publications

{% assign filtered_citations = site.data.citations | where: "tags", "wearcopd" %}

{% if filtered_citations.size > 0 %}
  {% assign data = filtered_citations %}
  {% assign years = data | group_by_exp: "d", "d.date | date: '%Y'" | sort: "name" | reverse %}

  {% for year in years %}
    {% assign year_data = year.items %}


    {% for d in year_data %}
      {% assign style = d.style | default: "rich" %}

      {% include citation.html 
        id=d.id 
        title=d.title 
        authors=d.authors 
        publisher=d.publisher 
        date=d.date 
        link=d.link 
        style=style 
        buttons=d.buttons
        description=d.description 
      %}
    {% endfor %}
  {% endfor %}
{% else %}
  <p>No publications found for this project.</p>
{% endif %}

