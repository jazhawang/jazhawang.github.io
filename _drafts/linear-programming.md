---
layout: post
title: Actually using Linear Programming
---

In school, we're taught a lot of different data structures and algorithms to solve different problems. For example, in UofT's introductory algorithms class (CSC373), we're taught about Dynamic Programming, and Greedy algorithms and Hash Maps. Now, if you've recently had any sort of programming interview, you're probably familiar with the above terms, and also a bunch of other popular things like graph algos and whatnot. But not only are you aware of what they are, you've also implemented them before (ok maybe not hash maps, but you've definitely encountered hashing algorithms, like Rabin-Karp). Minus some theorectical stuff, I would say most students (including me) have some sort of hands-on experience with these things.


However, Linear Programming<LINK> is one of those things that are taught (even lauded) in class as some sort of super powerful method (my prof would go on about how it was one of the strongest things that could be done in P), but that I've personally have no experience working with (beyond pen and paper). I have no idea how Simplex really work (let alone elliptical methods), and have never used a LP solver. 

In this blog post, I'm going to try actually using Linear Programming for some certain problems. I'm not going to implement the actual algorithms, but instead try to solve some interesting (imho) problems with LP.


We're gonna be using the Numeric.LinearProgramming from Haskell. I'd like to thing that this has pretty intuitive syntax (minus som Haskell-things)


For our first problem we'll just try to get the thing going. We have some linear constraints, and we want to maximize/minimize something.

< get it working>

Sorting: Weird that we can use linear programming to do something as discrete as sorting an array. It's due to some 
pretty cool theorems<Birkhoff-von Neumann> that we can do this. An explanation can be found here<Sasho's blog>.

Boolean Satisfiability: Also something discrete-ish that can be solved using linear programming. I tried to save this for
last because pretty much any problem can be stated as a (sufficiently long) boolean formula.

Google Code Jam ...



