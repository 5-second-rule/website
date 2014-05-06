---
layout: post
title: "Kyler Schwartz - week 5 report"
description: "Individual Report for Week 5"
category: individual-updates 
tags: [kyler-schwartz,week-5]
---
{% include JB/setup %}

### Goals From Last Week
 - Get animations working

### Accomplished Goals
 - Implemented 3 different animations through use of specific vertex shaders (also integrated simple timer for this).
 - Almost finished implementing a program that when given points we want the track to go through, will generate an object file for a tube that goes through each of those points (obj file is currently being made and the path is correct, just some fine tuning regarding the faces and such).

### Problems with Meeting Goals
 - Upon further look at the fbx file's format for animation, and based on Shazzy's feedback received from her professor, the effort required to get animations working using skeleton structures is not worth the time especially considering the types of animations applicable to our characters. As a result, I looked into and implemented programatic animations via the vertex shader.
 - Faces are coming out strange for the tube, but more testing will undoubtedly fix this.

### Goals for Next Week
 - Get the tube generation program working correctly so we can have a track to move the players along.
 - Implement any more animations (like one for the Ecoli model).
 - Get the animation loading working properly with the engine ( this might be done by tonight :D ).
