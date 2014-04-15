---
layout: post
title: "Jacob Maskiewicz - Week 2 Report"
description: ""
category: individual-updates
tags: [jake-maskiewicz,week-2]
---
{% include JB/setup %}


### What were your concrete goals for the week?

My plans for the week were to get a working renderer that can read in model
files and display them on the screen. Additionally, I wanted to have a basic set
of shaders running that would interpret the camera and view matrices, and do the
bare minimum Blinn-Phong lighting model.

### What goals were you able to accomplish?

We now have a renderer that can read in models and display them on screen, but
they're currently flat and colorless, and they have to be scaled awkwardly to
fit them on screen because we don't have a camera-view matrix.

### If there were goals you were unable to meet, what were the reasons?

We don't have a view matrix or a camera matrix, which is something which would
have been nice to have by now. We also lack a lighting model or textures, so
everything is simply the colors we pass into it.

### What are your specific goals for the next week?

I plan to finish up the renderer's core functionality and get a working bare
minimum engine core. We're meeting tonight to break the engine into parts, and
hopefully by the end of Week 4, we can get an Alpha running.

### What is your individual morale (which might be different from the overall group morale)?

I'm feeling really good. I've got my schedule all worked out, and it has plenty
of time to work on the game without missing out too much on other life things.
