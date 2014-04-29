---
layout: post
title: "Matheus Ferreira - Week 2 Report"
description: ""
category: individual-updates
tags: [matheus-ferreira,week-2]
---
{% include JB/setup %}


### What were your concrete goals for the week?

My goals for this week was create the basic data structures and the object's message and event system.

### What goals were you able to accomplish?

The GameObject class was create. To avoid problems with pointers a handler was create that will work like smart pointers to GameObjects. Every object created has an unique ID. A pointer to the object is inserted in a global array of GameObjects. When a reference to an object is needed it actually receives an GameObjectHandle that stores the index in the table and the ID of the object. When the handler will be dereferenced it will check in the table, using the index stored in the ObjectGameHandle. It will check if the pointer is not null (it means the object was removed) and, if it is not, if the ID is equal to the ID stored in the GameObjectHandler. If it is not, it means that the GameObject into that index was removed and replaced by a new one. With this we will avoid problems that can arise with objects that have already being removed. To avoid use of data structures of STL, I started to create some data structures that will be usefull to the perform object queries, like map and binary tree. I create a class to encapsulate the objects' messages, but it lackes more expecific implementation. We need to think in more expecific details for the engine and the gameplay.

### If there were goals you were unable to meet, what were the reasons?

None specific message pass between objects was create yet.

### What are your specific goals for the next week?

Continue the implementation of data structures, and work in object queries.

### What is your individual morale (which might be different from the overall group morale)?

I had some problems with class schedule what made me fell bad but I'm arranging this and fell better.
