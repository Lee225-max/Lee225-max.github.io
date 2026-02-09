---
layout: page
title: "Awards & Services"
permalink: /awards_services/
nav: true
nav_order: 4
---
<div class="page-content">

<h3> Awards </h3><hr>

{% assign awards = site.data.awards %}
<ul >
  {% for item in awards %}
  <li>
    {{ item.award }} {{ item.year }}{% if item.details != "" %} ({{ item.details }}){% endif %}.
  </li>
  {% endfor %}
</ul>

<h3> Conference Services </h3><hr>


{% assign services = site.data.conference_services %}
<ul>
  {% for item in services %}
  <li>
    {% if item.type == "Workshop" %}
      {{ item.title }}, {{ item.role }}.
    {% elsif item.type == "Forum" %}
      {{ item.title }}, {{ item.role }}.
    {% elsif item.type == "Area Chair" %}
      Area chair of {{ item.title }}.
    {% elsif item.type == "Reviewer" %}
      Reviewer for {{ item.title }}.
    {% endif %}
  </li>
  {% endfor %}
</ul>

<h3> Conference Services </h3><hr>

{% assign journals = site.data.journal_reviews %}
<ul >
  {% for journal in journals %}
  <li>{{ journal.name }}</li>
  {% endfor %}
</ul>

<h3> Talks </h3><hr>


{% assign talks = site.data.talks %}
<ul >
  {% for talk in talks %}
  <li>
    {{ talk.title }}, {{ talk.venue }}, {{ talk.date }}.
  </li>
  {% endfor %}
</ul>


</div>