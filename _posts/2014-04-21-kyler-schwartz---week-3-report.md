---
layout: post
title: "Kyler Schwartz - week 3 report"
description: "Individual Report for Week 3"
category: individual-updates 
tags: [kyler-schwartz,week-3]
---
{% include JB/setup %}

### Concrete Goals
 - Expand on the FBX parser to include texture coordinates, as well as possibly normals
 - Implment an object loader for models that won't have animation and make the load function file smart.

### Accomplished Goals
 - FBX parser now includes texture coordinates and normals 
 - OBJ loader created and it includes texture coordinates and normals as well
 - load function is file smart such that you don't specify FBX vs OBJ
 - Implemented texture class that passes a texture to the pixel shader and is applied to model

### Problems with Meeting Goals
 - Texture Coordinates Problem
 - - Upon mapping the texture to the texture coordinates on the model, it became apparent that either loading the texture or loading the texture coordinates has an error. Need to verify the texture coordinates.

### Goals for Next Week
 - Get the textures mapping properly
 - Implement a shader loader
