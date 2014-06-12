---
layout: post
title: "Matheus Ferreira - Week 4 Report"
description: ""
category: individual-updates
tags: [matheus-Ferreira,week-4]
---
{% include JB/setup %}


### What were your concrete goals for the week?

* Setup the configuration system.
* Create the event manager.
* Create the machine state.

### What goals were you able to accomplish?

* Configuration
The configuration is integrated to the game-engine and the game-core is already capable of access and modify it.

* Event manager
The event manager was inserted in the game-engine, so it can receive events from the game-engine and the game-core. The event manager was inserted in the game-engine because it would allow the receiving of events from the network that would be integrated in the game-engine. The event manager access resources from the game-core, so we have to think what classes of the game-engine can access the event manager to avoid binding errors. The events manager has a public method that allow receive events from any object to any object. An event can also has a delay or extra data that will be useful to handle it. An event is inserted in a queue ordered by the dispatch time. This way, the game-engine allows dispatch events that we want to be handled in the future.

With that in mind I thought in an animation with Shazzy using the event manager. When a player dies he will break in pieces. Each piece will run away from a point (at the same time it follow the blood flow) with a velocity v. At this time events are inserted in the event queue to be handled 5 seconds that will just invert the direction of the velocity vector. Another event is inserted in the queue to be handled 10 seconds later, where the player is resurrected with its pieces together with ultra velocity and invulnerable.

* State machine (SM)
Reading Programming Game AI by Example, Mat Buckland I found and interesting design pattern to do the event handling. Each object in the game has the design pattern state machine that will be responsible for handle events and the frame update. The state machine store the current state, a global state and a previous state. The global state allows the SM to handle events that will have common behavior over all the possible current states. The previous state member allows an object to return to a previous state. The states are singletons and are shared between objects (it avoids memory management of state instances). The states does not store any specific data to handle events. The SM store a pointer to the states and when the public method handle event is called a pointer to the owner of the SM is passed to the state object. So, any data needed is accessible and can be altered each frame from into the state.

The state class is a generic interface. Any state class should implements it. The state machine is also a generic class that can only store states of the same type. This way the machine state can be used by any class not only game objects. All the system together can have a machine state to differ its actual state, such as, at settings screen, loading, etc...

### If there were goals you were unable to meet, what were the reasons?

Reading Buckland gave me really good ideas that allowed me to do more than I had in mind for this week.

### What are your specific goals for the next week?

I want to implement AI behaviors (Steering Behaviors) to objects as blood cells that will works as obstacles during the race and will be useful in other animations like cups of coffee running away from players. I plan to think in do some state machine diagrams of some objects.

### Morale?

Really excited, and making plans for the summer :]
