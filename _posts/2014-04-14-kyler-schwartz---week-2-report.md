---
layout: post
title: "Kyler Schwartz - week 2 report"
description: "Individual Report for Week 2"
category: individual-updates 
tags: [kyler-schwartz,week-2]
---
{% include JB/setup %}

### Concrete Goals
 - Familiarize myself with DirectX 11
 - Decide on a 3d model format that will suppport animations and familiarize myself with it
 - Implement the parser for loading the model

### Accomplished Goals
 - Familiarize myself with DirectX 11 (partly)
 - Decided on using FBX file format for models with animation and partly familiar with format
 - FBX parser currently loads vertices and indices

### Problems with Meeting Goals
 - Learning DirextX 11
 - - Followed a few tutorials to get the shape rendered on the screen but still have much more to learn, thus the reason for partly accomplished.
 - FBX file format
 - - Got the vertices and indices loaded, but haven't been able to figure out where the texture coordinates are stored.
 - Parser Implementation
 - - Supports vertices and indices but dimensions of models have boundaries that will be solved once camera and perspectives are implemented. Still need to account for FBX right-hand rule vs DirectX left-hand rule.

### Goals for Next Week
 - Expand on the FBX parser to include texture coordinates, as well as possibly normals
 - Implment an object loader for models that won't have animation and make the load function file smart.
