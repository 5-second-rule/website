---
layout: post
title: "Jacob Maskiewicz - Week 4 Report"
description: ""
category: individual-updates
tags: [jake-maskiewicz,week-4]
---
{% include JB/setup %}

### What were your concrete goals for the week?

We planned to integrate all the parts. We wanted to get the renderer hooked into
the engine, and the engine plugged into the network so that we can get models on
screen communicating with a server in order to get updates.

### What goals were you able to accomplish?

We definitely got the renderer hooked in, and added several features into the
renderer, including textures, shader selection, and basic blinn-phong lighting.
However, we're not quite there with the full engine-network communication. The
parts are all together, but some event glue is still needed to get it all
working, and Zach and I plan to tackle that this evening.

### If there were goals you were unable to meet, what were the reasons?

The network code was much lower level then I thought. I spend a lot of time on
the renderer this week, and I'm not exactly sure what the exact speedbumps were,
but we've gotten ahead of plan on the renderer, which is good news.

### What are your specific goals for the next week?

I intend to finish up the Alpha deadline, and then start writing gameplay code.
My immediate next goal is to setup the engine in such a way that it is easy to
rapidly prototype (we can run updates locally, and plug into server code at a
later time). Once that is up, I'll be able to add game features very quickly and
easily, and our game will grow fast.

### What is your individual morale (which might be different from the overall group morale)?

I'm feeling good. A bit frustrated that no one told me we were behind schedule
on the engine integration until this weekend, but that's what I get for not
asking. I'll be paying much closer attention to development that's not mine in
the following weeks.
