---
title: "JITServer: Disaggregated Caching JIT Compiler"
---

# {% include icon.html icon="fa-solid fa-scroll" %} {{ page.title }}

## Description
Java virtual machines (JVMs) rely on just-in-time (JIT) compilers to improve application performance by converting bytecodes into optimized machine code at runtime. Unfortunately, JIT compilation can introduce significant runtime overheads in terms of processing power and memory. The extra CPU cycles needed for compilation can interfere with applications’ progress, delaying their start-up, increasing their warm-up time or affecting the response time and quality of service (QoS). JIT compiler disaggregation is a technique that decouples the JIT from the JVM and ships compilation to a separate remote process. JIT disaggregation reduces overall memory usage; however, its communication overheads result in higher system-wide CPU usage. JITServer is a disaggregated caching JIT compiler we implemented in the Eclipse OpenJ9 JVM. It improves system-wide resource utilization by enabling the caching of compiled native code and its reuse in JVMs running on different machines.
 

## Team
- [Eyal de Lara](https://www.cs.toronto.edu/~delara)
- [Angela Demke Brown](https://www.cs.toronto.edu/~demke)
- Marius Pirvu
- Alexey Khrabrov


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

{% assign filtered_citations = site.data.citations | where: "tags", "jitserver" %}

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
