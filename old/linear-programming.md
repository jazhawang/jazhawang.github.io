<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
    <title>😷 jazhawang's blog</title>
    <!-- styles -->
    <link rel="stylesheet" type="text/css" href="css/normalize.css">
    <link rel="stylesheet" type="text/css" href="css/default.css">
</head>

<body>

<h1>PROJECTS</h1>

<p> 
Linear Programming is one of those things that are pretty heavily emphasized in school, but which I have no real
applicable experience with. In this blog post, I'm going to use Linear Programming for some pretty common problems.
</p>

<p>I'm gonna be using the Numeric.LinearProgramming from Haskell. I'd like to thing that this has pretty intuitive syntax (minus some Haskell-things) </p>

<p>For our first problem we'll just try to get the thing going. We have some linear constraints, and we want to maximize/minimize something. </p>

<data/linear-programming/default.hs>

<p>It works! </p>

<p>LP can also be used to sort. This was pretty cool when I found out about it. The key to the algorithm
is the Birkhoff-von Neumann theorem, which states that if we are optimizing a doubly stochastic matrix, then our result will be
a permutation matrix. We just have to figure out a suitable objective to maximize such that the resulting permutation matrix gives
the sorted order for our input array. The objective function in question is $Maximize v.T * M * a$, where $v = (1,...,n)$, $M$ is the 
double stochastic matrix in question, and $a$ is the input array. </p>

<data/linear-programming/sorting.hs>

<p>Evaluating a Boolean Formula: Also something discrete-ish that can be solved using linear programming. </p>

<data/linear-programming/boolean.hs>

<p>EDIT (April 5, 2021): for some reason I can't find this file...
If you really need to know this then a quick google search should yield 
a good SO answer.  </p>

<p>Some other interesting LP formulations: LINK. The polynomial splitting formulation is especially interesting. I also could
try doing some Max flow / Matching stuff, but I want to save that for later posts. </p>

<p>That rounds out my foray into applied LP. I might post some more interesting reductions in a later post. Of course, using linear programming to solve sorting and boolean evaluation in real code is not a good idea, but it's very interesting to see that so many discrete-ish problems can be solved using LP. </p>

</body>
</html> 







