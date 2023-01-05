---
layout: default
---
{% for tag in site.tags %}
  <h3>{{ tag[0] }}</h3>
  <ul>
    {% for post in tag[1] %}
      [{{ post.title }}]({{ site.baseurl/post.url }})
    {% endfor %}
  </ul>
{% endfor %}
