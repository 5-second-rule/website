---
layout: post
title: "Kyler Schwartz - week 8 report"
description: "Individual Report for Week 8"
category: individual-updates 
tags: [kyler-schwartz,week-8]
---
{% include JB/setup %}

### Goals From Last Week
 - The graphical components of the game are to a point where game logic comes first, so until we have working game logic, I don't believe any more rendering progress will be done (beyond possibly a lighting system but not right now).
 - While I will be assisting with the player movement in the tube, we decided that I will be working on generating a tube that can vary in radius as well as produce a path that will include this data so that it will work with collisions.
 - If I get this done early, then I will be assisting Jake and Zach to get the motion logic working for the player ie: motions relative to the characters facing direction, forces being applied in the direction of the tube to make the player move in the blood "flow." 

### Accomplished Goals
 - Got the tube being generated with varying radii as well as having the output path include the radius information.
 - Implemented logic to interpolate between three path points to prevent the camera and player from having jumpy movement.
 - Implemented camera logic to follow behind the player while also staying within the pipe's radius.
 
### Problems with Meeting Goals
 - With the player control's not worked out fully yet, it was a little difficult making sure the jumpy camera wasn't a result of that instead of due to the path points.
 - Camera logic doesn't set the up vector yet so every now and then the camera jumps when changing its up vector although it still continues to keep the player in view.

### Goals for Next Week
 - Get the player control working really well (also with the controller?). This would involve getting the logic for rotations working properly, having forward and side movement based on heading to avoid the player getting turned around. Implement acceleration and deceleration.
 - Implement logic for player respawning when they die (location, speed, direction, etc.).
 