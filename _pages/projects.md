---
layout: page
title: "Research Projects"
permalink: /projects/
nav: true
nav_order: 3
---


{% assign projects = site.data.research %}

{% for project in projects %}
- **{{ project.title }}**  
  [ {{ project.code }}, {{ project.period }}{% if project.location %}, {{ project.location }}{% endif %}, {{ project.role }} ]
{% endfor %}