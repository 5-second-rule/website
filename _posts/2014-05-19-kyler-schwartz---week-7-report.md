---
layout: post
title: "Kyler Schwartz - week 7 report"
description: "Individual Report for Week 7"
category: individual-updates 
tags: [kyler-schwartz,week-7]
---
{% include JB/setup %}

### Goals From Last Week
 - Get bump mapping working properly on tube.
 - Get animation for Ecoli working.

### Accomplished Goals
 - Bump mapping is now working properly on tube. The light source is currently set to be the camera, but we plan to move that to the individual players.
 - Added an Ecoli animation that animates both his tentacles and body.
 
### Problems with Meeting Goals
 - Ran into a few problems getting the bump map to line up correctly with the texture, but upon realising that the tangent pointed in a way that was non-traditional, this was resolved.
 - Had to experiment a bit with values to start getting the Ecoli animation working properly since I discovered that the Ecoli model's center of mass is not near the center of the model.

### Goals for Next Week
 - The graphical components of the game are to a point where game logic comes first, so until we have working game logic, I don't believe any more rendering progress will be done (beyond possibly a lighting system but not right now).
 - While I will be assisting with the player movement in the tube, we decided that I will be working on generating a tube that can vary in radius as well as produce a path that will include this data so that it will work with collisions.
 - If I get this done early, then I will be assisting Jake and Zach to get the motion logic working for the player ie: motions relative to the characters facing direction, forces being applied in the direction of the tube to make the player move in the blood "flow." 
