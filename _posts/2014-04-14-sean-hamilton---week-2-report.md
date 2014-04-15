---
layout: post
title: "Sean Hamilton   Week 2 Report"
description: ""
category: individual-updates
tags: [sean-hamilton, week-2]
---
{% include JB/setup %}

###Server and Communications Update

A `CommsProcessor` class was developed which abstracts the threading and delivery of updates and processing of other message types for both clients and server.

A `Socket` class was developed to abstract the network communication symantics and to provide a universal interface to CommsProcessor for both WinSock or POSIX sockets.

An abstract `Serialize` class was developed to enforce a formal protocol for classes that can be serialized over the network.

The skeleton of the server was written to initialize the CommsProcessor object, provide a queue of client updates and send updates to clients.



