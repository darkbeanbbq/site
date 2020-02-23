---
title: portfolio
---

Ici vous trouverez mes projets et réalisations, qu'ils soient pro, perso, ou simplement des expérimentations poussées.

<div>
  {% for project in site.portfolio %}
  <div>
    <h2>
			<a href="{{ project.url }}">{{ project.title }}</a>
		</h2>
    <p>{{ project.year }}</p>
    <a href="{{ project.url }}">
			<img src="/assets/images/project/{{ project.thumbnail }}" class="img-portfolio">
		</a>
    <p>{{ project.excerpt }}</p>
  </div>
  {% endfor %}
</div>
