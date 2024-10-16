---
title: "Jackpine: A Spatial Database Benchmark"
---

# {% include icon.html icon="fa-solid fa-scroll" %} {{ page.title }} 
## Description
With the growing popularity of Web Mapping and Location based services, spatial support in major relational databases has become increasingly important. The spatial functionalities across commercial and open-source databases differ widely and there is no standard spatial database benchmark to compare such diverse offerings.

Jackpine is a spatial database benchmark that fills this role. It was developed as part of our ongoing research into system software support for spatial database workloads. The benchmark includes a comprehensive set of queries that exercise spatial features, as well as macrobenchmark workloads that model common real-life usage scenarios. It is also extensible so that new test scenarios can be added.

Trivia: the Jack pine is a species of pine tree. It is also the name of a famous painting by Canadian painter Tom Thomson.

## Team

- [Angela Demke Brown](https://www.cs.toronto.edu/~demke)
- [Suprio Ray](http://www.cs.toronto.edu/~suprio/)
- [Bogdan Simion](http://www.cs.toronto.edu/~bogdan/)

## Sponsor
<div align="left" id="banner">
    <div class="inline-block">
        <img src ="/images/nserc.jpg" height="100px">
    </div>
</div>

## Downloads

Jackpine is publicly available for researchers and academic users.

 

**New release now available!** Changes include fixes to some queries and a configuration issue with the Informix JDBC driver. Get the [source code](http://www.cs.toronto.edu/~suprio/jackpine/jackpine1.0_src.tar.gz) or the current [binary release](http://www.cs.toronto.edu/~suprio/jackpine/jackpine1.0.tar.gz).

 

Detailed instructions about how to download the data set (shape files) are provided along with the distribution, a copy of which can be downloaded from [here](http://www.cs.toronto.edu/~suprio/jackpine/README).

 

The previous binary release can be downloaded [here](http://www.cs.toronto.edu/~suprio/jackpine/jackpine0.7.tar.gz).

## Publications

{% assign filtered_citations = site.data.citations | where: "tags", "jackpine" %}

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
