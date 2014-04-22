---
layout: page
title: We Make Game
tagline: "That's right, only one."
---
{% include JB/setup %}

Welcome to the blog for 5 Second Rule's CSE 125 game. We are Zach Johnson, Kyler
Schwartz, Jacob Maskiewicz, Sean Hamilton, Amy Chandler, Shazzy Gustafson, and
Matheus Ferreira.

<div class="posts">
  {% for post in site.posts %}
    <h2 style="border-bottom: 1px solid #eee;">
      <a style="color:#444;" href="{{ BASE_PATH}}{{ post.url }}">
         {{post.title}}
      </a>
      {% if !post.tagline.strip.empty? %}
         <small> &nbsp;
           {{ post.tagline }}
         </small>
      {% endif %}
    </h2>
    <p style="margin-top: -10px;"><em>{{ post.date | date_to_string }}</em></p>
    <p>{{ post.content }}</p>
  {% endfor %}
</div>

