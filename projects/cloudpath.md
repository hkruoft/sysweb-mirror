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
{% capture col1 %}
{% include figure.html image="images/nserc.jpg" width="30%" %}
{% endcapture %}
{% include cols.html col1=col1 %}


## Publications

Below are all the publications tied to CloudPath.


{% assign filtered_citations = site.data.citations | where: "tags", "cloudpath" %}

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
  <p>No publications found with the tag "cloudpath".</p>
{% endif %}
