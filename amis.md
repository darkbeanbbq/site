---
titre: liste d'amis
---

<ul>
{% for ami in site.data.amis %}
  <li>
    <a href="{{ ami.lien }}" {% if page.url == ami.lien %}style="color: red;"{% endif %}>
      {{ ami.nom }}
    </a>
    {% if ami.description %}
    <p> {{ ami.description }} </p>
    {% endif %}
  </li>
  {% endfor %}
</ul>
