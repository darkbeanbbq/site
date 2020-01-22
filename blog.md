---
title: blog
---
# dernières publications

<ul>
  {% for post in site.posts %}
  <li>
    <h2><a href="{{ post.url }}">{{ post.titre }}</a></h2>
    <p>{{ post.excerpt }}</p>
  </li>
  {% endfor %}
</ul>
