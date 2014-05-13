---
layout: post
title: "Jacob Maskiewicz - Week 6 Report"
description: ""
category: individual-updates
tags: [jake-maskiewicz,week-6]
---
{% include JB/setup %}

### What were your concrete goals for the week?

We planned to have players following a track with basic collisions implemented.

### What goals were you able to accomplish?

There's a tube model now.

### If there were goals you were unable to meet, what were the reasons?

I spent ~15 hours this week refactoring our game and engine code. Among other
things, I changed the event system so that serialization and construction code
wouldn't have to be maintained in several places. I also decoupled the physics
from the AI, and moved various parts of the project into common repositories.

All of this was supposed to happen in parallel with the implementation of the
tube and collisions, but looking at the git logs, it appears that the only
things that got worked on were the tube model itself and controller input (a
nice to have on our original list).

### What are your specific goals for the next week?

I'm planning to start implementing the track steering and collisions so that we
can meet last week's deadline.

### What is your individual morale (which might be different from the overall group morale)?

I'm a little bit frustrated with the team, and I'm very stressed out. I had two
finals, Junkyard Derby, and research deadline pushes last week, and I still put
many hours of coding into the game, and I'm feeling a bit alone in that.
