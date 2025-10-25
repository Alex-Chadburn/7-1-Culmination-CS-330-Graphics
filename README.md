# 7-1-Culmination-CS-330-Graphics

## How do I approach designing software?
I try to make my software modular in the hopes that I can reuse code later instead of rebuilding the wheel. This approach often pays off very soon for larger projects. When modularizing code, using CPP files and .H files is really useful. This shows that you know industry standards, that you can apply them effectively, and it makes it easier to fix components if they aren't working as expected.

## What new design skills has your work on the project helped you to craft?

Working on this project has helped me to design new things for larger projects, I looked through the code to find references of certain things, and I tinkered around, adding my own functions through header definitions. Being able to look around and edit things to work for my project specifically like inverting the scroll wheel direction (to work like other programs) has really helped me in how I think about designing for projects.

## What design process did you follow for your project work?

The process that was followed was slow and modular, throughout the course we learned little by little about many different topics and implemented them, be it shapes, textures, shaders, rotation, et cetera. 

## How could tactics from your design approach be applied in future work?

In the future, the process would not involve learning, however having a fundemental knowledge to base your work off of is necessary in order to create anything of significance. So while the tactic of learning little by little could be phased out once you get enough information (especially about underlying architecture) you should not forget that it was the learning that got you there even if you aren't actively using that tactic.

## How do I approach developing programs?

I approach developing programs by setting goals for my program, making sure that the graphical decisions make sense, and it is intuitive to use. For this specific project, as it is more of a demo, I didn't take too much consideration into who the end user would be, using Q and E for up and down respectively can be considered significantly worse than space/shift. Not because of proximity but because of the average end user habbits, playing videogames often the spacebar is for jumping and shift is for crouching, it only makes sense that the camera wouldn't use its own schema. 

## What new development strategies did you use while working on your 3D scene?

One major shift in mny development strategy was iteration, when I code normally iterating through the code is just having a syntax checker say you are missing something near line 104 for example. The iteration in this project is significantly different (assuming you write the syntax correctly). For example Assuming you want a specific color, you'd either be iterating by playing around with colors or ideas. You can recognize that you can use any image editing program and look at hex as a combination of R, G, B each out of 255 and just divide each number and that's the scalar from 0 -> 1. Or rotating objects, there is an iterative approach using all 3 rotations, and scaling different sides, but there is also a way to think about it more efficiently. After denoting what each of the x, y, and z coordinates does to your plane you can get an idea of where you are looking, and how that effects the placement, rotation, and what needs to be scaled. In minecraft specfically the debug crosshair actually shows which direction you are looking be it positive x, positive z, or the negatives of either. 

## How did iteration factor into your development?

Iteration was key, but it wasn't everything, you have to take a step back and ask sometimes if there isn't a better solution on how to iterate rather than just trying to iterate.

## How has your approach to developing code evolved throughout the milestones, which led you to the project’s completion?

I really want to say my approach to developing code has been consistent throughout the course of this project, it was less intensive than other computer science courses that drill in the basics of modularizing code, making header and cpp files, and creating a new project from scratch with like bare minimum libraries like chrono to make a working clock. 

## How can computer science help me in reaching my goals?

Computer science has already helped me in reaching some of my goals, letting me interpret how projects are structured, what components do, and how systems work. This has specifically helped me when github projects don't necessarily have all the things I want, I can add in what I want and submit a pull request (after building it through make, maven, gradle or whatnot). It is also helping me reach my professional goals, as learning more about systems and their intracacies helps me to make better code. 

## How do computational graphics and visualizations give you new knowledge and skills that can be applied in your future educational pathway?

This course gave me new knowledge on how graphical visualization itself works, and how to apply it to 3d scenes. While you could argue this isn't useful for a generalized degree I would disagree. Any amount of knowledge anywhere acccumualtes into something much larger than the one activity. Like how in my english class while researching the printing press I already had background information for the process of dithering and how that correlated to what was going on at that time. 

## How do computational graphics and visualizations give you new knowledge and skills that can be applied in your future professional pathway?

Specifically in my profession, it can help me better understand how 3d scenes operate, why issues occur if they do, and how to hopefully fix them. Beyond knowing the basics as I mentioned above it just gives me more of a mathematical framework to understand how to do more problem solving in the future.
