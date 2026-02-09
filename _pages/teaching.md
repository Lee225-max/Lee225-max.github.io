---
layout: page
permalink: /teaching/
title: Teaching
#description: Course materials, schedules, and resources for classes taught.
nav: true
nav_order: 6
#calendar: true
---



<div class="teaching-container">

<div class="course-category">
  <h2>Graduate Courses</h2>
  
  {% assign grad_courses = site.data.teaching.graduate_courses %}
  {% for course in grad_courses %}
  <div class="course-card">
    <div class="course-title">{{ course.title }}</div>
    <div class="course-chinese-title">{{ course.chinese_title }}</div>
    
    {% if course.semester or course.year %}
    <div class="course-meta">
      {% if course.semester %}
      <span class="semester">{{ course.semester }}</span>
      {% endif %}
      {% if course.year %}
      <span class="year">{{ course.year }}</span>
      {% endif %}
    </div>
    {% endif %}
  </div>
  {% endfor %}
</div>

<div class="course-divider"></div>

<div class="course-category">
  <h2>Undergraduate Courses</h2>
  
  {% assign undergrad_courses = site.data.teaching.undergraduate_courses %}
  {% for course in undergrad_courses %}
  <div class="course-card">
    <div class="course-title">{{ course.title }}</div>
    <div class="course-chinese-title">{{ course.chinese_title }}</div>
    
    {% if course.semester or course.year %}
    <div class="course-meta">
      {% if course.semester %}
      <span class="semester">{{ course.semester }}</span>
      {% endif %}
      {% if course.year %}
      <span class="year">{{ course.year }}</span>
      {% endif %}
    </div>
    {% endif %}
  </div>
  {% endfor %}
</div>

</div>
