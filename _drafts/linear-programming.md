---
layout: post
title: Actually using Linear Programming
---

In school, we're taught a lot of different data structures and algorithms to solve different problems. For example, in UofT's introductory algorithms class (CSC373), we're taught about Dynamic Programming, and Greedy algorithms and Hash Maps. Now, if you've recently had any sort of programming interview, you're probably familiar with the above terms, and also a bunch of other popular things like graph algos and whatnot. But not only are you aware of what they are, you've also implemented them before (ok maybe not hash maps, but you've definitely encountered hashing algorithms, like Rabin-Karp). Minus some theorectical stuff, I would say most students (including me) have some sort of hands-on experience with these things.


However, Linear Programming is one of those things that are taught (even lauded) in class as some sort of super powerful method (my prof would go on about how it was one of the strongest things that could be done in P), but that I've personally have no experience working with (beyond pen and paper). I have no idea how Simplex really work (let alone elliptical methods), and have never used a LP engine. 

In case you've forgotten, or don't know what linear programming is:
TODO LINKS

Basically, given some ...
TODO FIGURE OUT HOW TO DO MATH


In this blog post, I'm going to try actually using Linear Programming for some certain problems. I'm not going to implement the actual algorithms, but instead try to solve some interesting (imho) problems with LP. This will serve as a learning experience for me and hopefully you'll get something out of this. I'm not going to be explain more theoretical stuff like duals (unless someone can prove me wrong!)


We're gonna be using the Numeric.LinearProgramming from Haskell. I'd like to thing that this has pretty intuitive syntax (minus som Haskell-things)


For our first problem we'll just try to get the thing going. We have some linear constraints, and we want to maximize/minimize something. We could be some Totalitarian government, trying to get the neccesarry labour from our populace to keep the light on, while minimizing the resources allocated to them. (TODO GET THE PROPER LINK). Or, we could be some sort of cartel, with our constraints being how much product we can push through our pipelines, while maximizing expected profit. (I wouldn't be surprised if some of the more sophisticated cartels have operation research guys thinking about this sort of problem. If not, then perhaps I've just presented an extremely lucrative, but unethical job prospect for you ~ ure welcome)

< get it working>



Fun fun. But what if you want t




