---
layout: post
title: "Matheus Ferreira - Week 8 Report"
description: ""
category: individual-updates
tags: [matheus-ferreira,week-8]
---
{% include JB/setup %}

### Goals From Last Week
* Insert functionality of create autonomous objects on the fly.
* Insert commands of change object state in the command line.

### Accomplished Goals
* I implemented the functionality to create autonomous objects but it still needs better management to avoid that a great number of object are created and impact the performance.
* I improved the command line. It is working with regular expressions to make it more flexible. It now can set configurations, flags of objects, and I implemented a dictionary of game objects. With this dictionary is possible do things like set the position of object A equal the position of object B entering with the command: "set -p B.position -n A".
* I did some changes in the physics to make the control easier and make the fluid force variable with the distance from the center of the tube - further from the center smaller the force applied.
 
### Problems with Meeting Goals
* The creation of autonomous objects need better management, right now it can get control of how many objects were created in the world and make the simulation too heavy.

### Goals for Next Week
* Have the management of objects and have autonomous objects bothering the players like crazy.

### What is your individual morale (which might be different from the overall group morale)?

I had a great week with some opportunities of work for the summer popping up. I could do some good advances with the command line what allowed me better test the AI now that we already have the tube.
