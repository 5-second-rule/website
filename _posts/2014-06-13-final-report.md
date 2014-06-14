---
layout: post
title: "Final Report"
description: ""
category: 
tags: []
---
{% include JB/setup %}

A. In the project review document, start by addressing these main questions:
   Game concept: How and why did your game concept change from initial concept to what you implemented?
Most of the initial game concept made its way into what we implemented. Due to time constraints some of the features and game mechanics weren’t implemented, most notably the inner tube mechanics we wanted to implement. We also wanted to implement more power-ups, like a shooting one for example or a shield. However, we were able to apply good enhancements as animations, bump mapping, and AI.

   Design: How does your final project design compare to the initial design, and what are the reasons for the differences, if any?
The game design, just like the game concept, didn’t change much from our initial design. Some key aspects that didn’t get implemented were a menu system in which the user could view an instruction screen for goal and controls. An end state was also not implemented, so the winning state was simply being the last one standing and the game continued going on. We had some initial code for a win state, but it was causing issues and so it didn’t make it into the final build.

   Schedule: How does your final schedule compare with your projected schedule, and what are the reasons for the differences, if any?
The schedule did not change much from the originally proposed one. The milestones stayed where they were originally proposed and met on time or close to on time. The schedule's specification was general enough that it afforded us enough flexibility for moving things around when needed and still served as a guiding set of goals up till the very end even though some features did not make it in the demo version.

B. Then address these more general questions:
   What software methodology and group mechanics decisions worked out well, and which ones did not? Why?
A layered approach to separating areas of concerns worked well for us. Following a strict object oriented design paradigm also worked out very well and lead to clean, readable, and manageable code. As far as group mechanics go, having design meetings in the lab with all the pertinent members of the team for the area being designed seemed to work well. We were originally going to have sync posts in our facebook group 3 times a week, but those ended up not really happening much, except during crunch time. It probably would have been a good thing to keep those up throughout the quarter. 

   Which aspects of the implementation were more difficult than you expected, and which were easier? Why?
Sometimes dealing with code conflicts and making sure everyone was on the same page was a little harder than expected, especially when we were working more remotely. But we worked through the problems and ended up with something good. Also, finding tasks that didn't depend on things not implemented yet became a little harder as time progressed.
Kyler: Out of the aspects that I worked on, I found that getting models and textures implemented was more difficult than I expected. This was a result of some of the more simple methods that were present before in Direct X being deprecated and thus integrating a library from Microsoft was necessary (in regards to textures) and for models it was mostly trying to find a well-supported file type to use for the models. The easiest part I would say was implementing the shaders. Although it took some experimentation, I already had experience writing shaders and so this was pretty easy.

   Which aspects of the project are you particularly proud of? Why?
We're really proud of how it turned out graphically.
Jake: I'm also very proud of how well we were able to maintain a desperation of concerns and keep the engine very game-unspecific. Although things began to creep into each other toward the end, it felt like we had some really strong modularity in our game and engine components. 
Kyler: I am particularly proud of the animations I was able to implement for the different characters through only vertex shaders. Although I am sure its been done before, this was something I had thought of and decided to implement on my own and couldn’t be happier with the end result. I am also proud of the code I wrote to construct the tube the characters swam through. It made it simple to design and create a new track and, although it had a couple graphical hiccups, I think it came out looking great.

   What was the most difficult software problem you faced, and how did you overcome it (if you did)?
Kyler: The one difficult problem I remember facing was trying to implement animations through fbx files. After analyzing the methods through which this was meant to be done (skeletons and skinning), it seemed like this would greatly hinder our game in both loading and implementation. The way I overcame the problem was by implementing the animations of our characters through vertex shaders. I realized that most of our characters were very spherical in nature, or at least symmetric in some regard. The animations we would want also involved a lot of wiggle motions which I realized could be done with sine waves and such. This is why I decided to implement the animations through vertex shaders, and not only did they come out great, they also didn’t involve loading time and so ran much faster than I believe animations parsed from the fbx files would have been.
Matheus: Testing the AI was kind of a challenge, it is particularly difficult to stop in a breakpoint and try to find the root of a logic problem. The better approach is make sure to test each component separately and I could do that in a more practical way inserting a command line interface to change the state of objects on the fly.

   If you used an implementation language other than C++, describe the environments, libraries, and tools you used to support development in that language. What issues did you run into when developing in that language? Would you recommend groups use the language in the future? If so, how would you recommend groups best proceed to make it as straightforward as possible to use the language? And what should groups avoid? Finally, how many lines of code did you write for your project? (Do not include code you did not write, such as library source.) Use any convenient mechanism for counting, but state how you counted.
We implemented our project in C++. We ended up with 75,122 lines of code across 457 files. 

    Counting lines in powershell: Get-Content (Get-ChildItem -Include *.cpp,*.h -Recurse -Force) | Measure-Object -Line
    Counting files in powershell: Get-ChildItem -Include *.cpp,*.h -Recurse -Force | Measure-Object -Line

   In developing the media content for your project, you relied upon a number of tools from the DirectX libraries to modeling software. And you likely did some troubleshooting to make it all work. So that students next year can benefit from what you learned, please detail your tool chain for modeling, exporting, and loading meshes, textures, and animations. Be specific about the tools and versions, any non-obvious steps you had to take to make it work (e.g., exporting from the tool in a specific manner), and any features or operations you specifically had to avoid -- in other words, imagine that you were tutoring someone on how to use the toolchain you used to make it all work. Also, for the tools you did use, what is your opinion of them? Would you use them again, or look elsewhere?
The characters were modeled using maya(1000-8000 triangles was the range for the characters, but most averaged at 2,000 polys). A combination of reducing triangles and smoothing normals in maya allowed us to have high res looking models but with a low poly count. The models were then exported and textured and UV mapped using Zbrush. Zbrush UV maps the models with a press of one button, then from zbrush it was exported back into maya just to make sure everything mapped correctly and then exported as an .obj or .fbx format. Zbrush is amazing, but It is usually used for modeling for movies were polycount doesn't matter so that was a huge learning process, but its awesome to paint your models with. The 2D graphics were all done in photoshop. Other textures that were used were found online with a corresponding bump map. 

For loading in meshes and models, we used both an obj loader and an fbx loader. The obj loader simply amounts to code that counts up the number of vertices, normals, and texture coordinates, and then fills in arrays with their data reading down the file (based on if the line starts with v, vn, or vt). The last part of the obj file are faces, which have three points. Each point is in the format x/y/z, where the x represents what number vertice was listed, y stands for the texture coordinate, and z is the normal. Since these counts start at 1, you should subtract 1 from the value when referencing your arrays. The fbx loader came from code found for the fbx file. The logic is similar to an obj loader, except it has functions for getting the index for a polygon and then the vertex and vertexnormal for the polygon. We added code to calculate the center of the model and adjust the points so that they were centered at 0, but other than that, no real troubleshooting was done. While the obj loader was really straight forward, we wouldn’t recommend the fbx file type since it contained quite a lot of extra information and we had one file that for an unknown reason seemed to take longer to load even though it was smaller and simpler than the other models.

The other piece of code we needed was the DDSTextureLoader from Microsoft. This was needed because they deprecated the other functions that were used to load textures and so this loader was needed to load in the textures. The textures had to be in DDS format for this to work. We found converting the textures to DDS in Visual Studio worked the best and had no problems. Other than that, it simply involved using the DirectX::CreateDDSTextureFromFile() function call which Microsoft provides details for. Although it did require adding outside code, the DDSTextureLoader was easy to use and would be recommended if you are using the latest version of Direct X.

Would you have rather started with a game engine like Ogre or would you still prefer to work from scratch?
We prefer to work from scratch. While using a game engine might help with some issues or lead to a better looking game, it also creates its own issues. Basically, rather than spending time implementing your game, it results in spending time trying to learn the engine. Also, since we didn’t create it ourselves, we are more likely to mess up some aspect of it or be unaware of some of it’s features and end up doing things the hard way. For this reason, we would still choose to start from scratch if given the choice again. It was also a better learning experience starting from scratch on the game in understanding all the intricacies and complexities of a game engine design. 

   The RakNet question
We didn’t use a network library or a physics engine. Only one group used a physics engine (bullet) and we could tell it gave them some issues. Some of our team members have used bullet before and know that it can be frustrating to get working properly with what you want to do. For this reason, we wouldn’t recommend using a physics engine and implement one that fits your needs. This falls under similar problems of using a game engine where you have to learn to use it before being able to make progress and can implement it wrong due to being unaware of features or nuances.

   Looking back over the past 10 weeks, how would you do things differently, and what would you do again in the same situation?

Kyler: In terms of what I worked on, namely shaders, animations, and the tube, I believe I would do those again in the same situation. I enjoyed getting those to work properly and liked the visual nature of being able to see the results. As for something I would do differently, I would have spent more time early on to familiarize myself with how our game engine worked. In the last few weeks of the project, my unfamiliarity with the specifics of how the game engine worked lead to a few miscommunications and misunderstandings on what I should be doing and how I should implement things. It also would have allowed me to help even more during the debugging stages where the bugs were occurring in the engine rather than the graphical components.
Jake: I would have made more effort to keep the entire team caught up on the architecture decisions. Towards the end, the lack of caught-up-ness really hindered our ability to move quickly. 

It would have been nice to spend a little more time on the actual gameplay aspects. We spent a lot of time building a solid foundation, which isn't necessarily apparent from the users POV during the demo. Overall, the game was fairly solid by the end, but lacked.. I don't know. A little something more.

   Which courses at UCSD do you think best prepared you for CSE 125?
CSE 131 was useful for getting practice with a larger very interconnected software project before 125.
Kyler: CSE 167 and 190. CSE 167 helped give me the basis for graphics and trained me to think in 3D better in regards to matrices and rotations. The GPU Programming CSE 190 course focused a lot on shaders, which greatly helped in implementing the shaders for this project and also probably helped inspire me to use the shader for the animations.

   What was the most important thing that you learned in the class?
Implementing a networked game is much harder than an offline game and having a good team makes the creation process easier and more fun.

C. Finally, if you wish, I would appreciate any feedback on the course (entirely optional):
   What books did you find helpful that were not on the recommended list but should be? What books were on the recommended list but were not useful and should be removed?
Kyler: I didn’t use any books. I did find some of the recommended online tutorials helpful, like those at directxtutorial.com and rastertek.com, since I didn’t have the experience using Direct X.
Jake: I used one of the DirectX 11 books and loved it so much I bought a copy for my kindle at home. 

   I will be teaching this course next Spring. What advice/tips/suggestions would you give students who will take the course next year?
Sean: Start early as possible on the project. Have a set of goals in mind to work towards each week. Make sure you have a well rounded team; graphics, networking, game mechanics, and artists and all with sound programming experience. This same well rounded team should easily be able to move and assist on other areas as well. Leave lots of time for integrating the separate pieces of the system because it will not go as intended. Start to design the different pieces to talk to one another early on. Use assertions and exceptions early on to help with troubleshooting. Learn how to use the graphics debugging tools that are available as they will greatly simplify debugging bugs dealing with graphics and rendering. Start early on working 2D interface feature into the rendering engine.
It worth take a look in the course books to help in design decisions. For example, Game Engine Architecture, Jason Gregory, probably will give you some insights of components that are worth to implement, advantages and disadvantages of each approach - one example in C++ is alternatives to the use of pointers such as handles. Buckland AI book can also inspire some game play logic not hard to implement - and no previous experience required. Depending on the game style it can be useful have a command line interface and make the renderer support generate primitives and texts; those can be a good alternative to game play testing and debugging.

   How can the course be improved for next year?



