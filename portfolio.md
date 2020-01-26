---
title: portfolio
---

<div>
  {% for project in site.portfolio %}
  <div>
    <h2><a href="{{ project.url }}">{{ project.title }}</a></h2>
    <p>{{ project.year }}</p>
    <img src="/assets/images/project/{{ project.thumbnail }}" class="img-portfolio">
    <p>{{ project.excerpt }}</p>
  </div>
  {% endfor %}
</div>
