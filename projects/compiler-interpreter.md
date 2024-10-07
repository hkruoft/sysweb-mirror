---
title: "Compiler and Interpreter Optimization"
image: images/uoft.jpg
links:
---

# {% include icon.html icon="fa-solid fa-scroll" %}Compiler and Interpreter Optimization


## Research Team


- [Angela Demke Brown](https://www.cs.toronto.edu/~demke)
- Allan Kielstra
- Gita Koblents
- Kevin Stoodley
 
- Marc Berndl
- [Gennady Pekhimenko](https://www.cs.toronto.edu/~pekhimenko)
- Levon Stepanian
- Benjamin Vitale
- Mathew Zaleski
 
## Sponsors
  <div align="left" id="banner">
    <div class="inline-block">
        <img src ="/images/nserc.jpg" height="100px">
    </div>
    <div class="inline-block">
        <img src ="/images/ibm-advanced-studies.png" height="100px">
    </div>
</div> 

## Publications

Below are all the publications tied to {{ page.title }} .


{% assign filtered_citations = site.data.citations | where: "tags", "compiler-interpreter" %}

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
  <p>No publications found relating to this project.</p>
{% endif %}
