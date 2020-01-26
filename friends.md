---
title: liste d'amis
---

<ul>
{% for friend in site.data.friendlist %}
  <li>
    <a href="{{ friend.link }}" {% if page.url == friend.link %}style="color: red;"{% endif %}>
      {{ friend.name }}
    </a>
    {% if friend.description %}
    <p> {{ friend.description }} </p>
    {% endif %}
  </li>
  {% endfor %}
</ul>
