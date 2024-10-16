---
name: "Cloudpath"
image: images/uoft.jpg
links:
---

# {% include icon.html icon="fa-solid fa-scroll" %}CloudPath: A Multi-Tier Edge Computing Framework

## Description

Path computing is a new paradigm that generalizes the edge computing vision into a multi-tier cloud architecture deployed over the geographic span of the network. Path computing supports scalable and localized processing by providing storage and computation along a succession of datacenters of increasing sizes, positioned between the client device and the traditional wide-area cloud data-center. CloudPath is a platform that implements the path computing paradigm. CloudPath consists of an execution environment that enables the dynamic installation of light-weight serverless stateless event handlers, and a distributed eventual consistent storage system that replicates application data on-demand. CloudPath handlers are small, allowing them to be rapidly instantiated on demand on any server that runs the CloudPath execution framework. In turn, CloudPath automatically migrates application data across the multiple datacenter tiers to optimize access latency and reduce bandwidth consumption.

## Research Team

- Bharath Balasubramanian
- Eyal de Lara
- Shankaranarayanan Puzhavakath Narayanan 
- Seyed Hossein Mortazavi
- Caleb Phillips
- Mohammad Salehe
- Abhishek Tiwari
 
## Sponsors

[![image]({{ "/images/nserc.jpg" | relative_url }}){:width="250px"}](https://www.nserc-crsng.gc.ca/)

## Publications

{% assign filtered_citations = site.data.citations | where: "tags", "cloudpath" %}

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
      %}
    {% endfor %}
  {% endfor %}
{% else %}
  <p>No publications found for this project.</p>
{% endif %}

