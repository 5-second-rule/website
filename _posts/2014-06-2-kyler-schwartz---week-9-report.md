---
layout: post
title: "Kyler Schwartz - week 9 report"
description: "Individual Report for Week 9"
category: individual-updates 
tags: [kyler-schwartz,week-9]
---
{% include JB/setup %}

### Goals From Last Week
 - Get the player control working really well (also with the controller?). This would involve getting the logic for rotations working properly, having forward and side movement based on heading to avoid the player getting turned around. Implement acceleration and deceleration.
 - Implement logic for player respawning when they die (location, speed, direction, etc.).

### Accomplished Goals
 - Implemented a new control scheme (and camera logic) that made it much easier and clearer to control the player. Also mapped the new control scheme for the Xbox controller.
 - Implemented multiple light source logic so that each character (or other sources) emit their own color light with a radius that dies off with distance^2 logic.
 
### Problems with Meeting Goals
 - For the new movement scheme, the input values for a controler's analog stick results in smooth turning, but this means that the distinct 0 or 1 input of the keyboard reults in jumpy looking rotation. It still plays similarly but it is much better control with the controller.
 - The lighting can be integrated, the logic for getting the light positions to match to the lighting system needs to be added.

### Goals for Next Week
 - Help get all the last states for it to be a game working:
	- Start Screen.
	- Race Countdown state.
	- UI on screen (death count, power-ups)
	- Death working (shrink animation).
	- Respawn logic.
	- Multiple light model fully integrated.
	- Winning state.
 