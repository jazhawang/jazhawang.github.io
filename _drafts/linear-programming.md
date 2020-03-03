---
layout: post
title: Actually using Linear Programming
---

Linear Programming is one of those things that are pretty heavily emphasized in school, but which I have no real
applicable experience with. Weird, considering that a lot of my profs just love Linear Programming. 

In this blog post, I'm going to try actually using Linear Programming for some certain problems. I'm not going to implement Simplex or talk about primal-dual methods. I just going to try to solve some interesting (imho) problems with LP.

I'm gonna be using the Numeric.LinearProgramming from Haskell. I'd like to thing that this has pretty intuitive syntax (minus som Haskell-things)

For our first problem we'll just try to get the thing going. We have some linear constraints, and we want to maximize/minimize something. 

<data/linear-programming/default.hs>

Pretty standard.

Sorting: Weird that we can use linear programming to do something as discrete as sorting an array. The key to the algorithm
is the Birkhoff-von Neumann theorem, which states that if we are optimizing a doubly stochastic matrix, then our result will be
a permutation matrix. We just have to figure out a suitable objective to maximize such that the resulting permutation matrix gives
the sorted order for our input array. The objective function in question is $Maximize v.T * M * a$, where $v = (1,...,n)$, $M$ is the 
double stochastic matrix in question, and $a$ is the input array.
An explanation can be found here<Sasho's answer on SO>.

<data/linear-programming/sorting.hs>

Evaluating Boolean Formula: Also something discrete-ish that can be solved using linear programming. I tried to save this for
last because pretty much any problem can be stated as a (sufficiently long) boolean formula.

<data/linear-programming/boolean.hs>

Some other interesting LP formulations: <LINK>. The polynomial splitting formulation is especially interesting. I also could
try doing some Max flow / Matching stuff, but I want to save that for later posts.

That rounds out my foray into applied LP. I might post some more interesting reductions in a later post. Of course, using linear programming to solve sorting and boolean evaluation in real code is stupid, but it's very interesting to see that so many discrete-ish problems can be solved using LP.

