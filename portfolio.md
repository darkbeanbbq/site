---
title: portfolio
---

<ul>
  {% for projet in site.portfolio %}
  <li>
    <h2><a href="{{ projet.url }}">{{ projet.titre }}</a></h2>
    <p>{{ projet.annee }}</p>
    <p>{{ projet.excerpt }}</p>
  </li>
  {% endfor %}
</ul>
