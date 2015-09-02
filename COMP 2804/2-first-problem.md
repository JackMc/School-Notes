# Sample problem
There are 6 people in a group. For any two people, the two can be
either friends or strangers.

**Claim**: There is a group of 3 friends or there is a group of
3 strangers.

How can we prove this? We don't know yet. So we are going to turn
it into something we know, a graph!

Let's call the people P<sub>1</sub>, P<sub>2</sub>, ... P<sub>n</sub>.
These people are vertices in the graph.

The edges are all pairs P<sub>i</sub>P<sub>j</sub>. Since all pairs are connected, we call this a _complete graph_.

We will colour the edges. If the two are friends, we will make the
edge <span style="color: red">red</span>. Otherwise (they are
strangers) we will colour them <span style="color: blue">blue</span>.

_**Draw graph here**_

So we want to translate our claim regarding the people into something
about this graph.

We first make a couple observations. For three vertices to be
considered all "friends", there must be a three-way connection
between the three points with edges of the same color (like a
triangle).

So, using this, we translate the claim:


**Claim (with graph model)**: A complete graph on 6 vertices, coloured
red and blue), will always contain a red or blue "triangle" (three points connected by edges of the same color).

Now how can we prove it?

**Proof**: Take P<sub>1</sub>. It has 5 connected edges (one to each
other node, by complete graph property). We can say that _either_
three of the edges are red, or three of them are blue.

So, with the assumption that at least 3 of the edges are either red
or blue, we name these three (let's say red, it doesn't matter really)
edges A, B, and C, and the edges between them (of which we don't know
the colours) AB, BC, AC.

If all three are either red or blue, we have our triangle, and don't
have to look any further. If AB is red, we get a red triangle
ABP<sub>1</sub>. If BC is red, we get a red triangle BCP<sub>1</sub>.
If AC is red, we get a triangle ACP<sub>1</sub>.

It turns out that this holds for any group of vertices >= 6.


## A similar problem

**Hypothesis**: For k >= 3, n people, and n = floor(2<sup>n/2</sup>),
In a group of n people, no group of k friends, and no group of k
strangers.

We will prove this near the end of the course using _probability_.

## Sets

For set S = {1, 2, 3, 4, 5}, we want to find a seuquence of subsets
S<sub>1</sub>, S<sub>2</sub>, ... S<sub>n</sub> such that for all
i != j S<sub>i</sub> is **not** a subset of S<sub>j</sub> and
S<sub>j</sub> is **not** a subset of S<sub>i</sub>. (Call this property _\*_)

How large can n be for this property to still hold (on the set above)?

Let's try.

{1, 2}, {2, 3}, {3, 4}, {4, 5}, {1, 3}, {1, 4}, {1, 5}, {2, 4},
{2, 5}, {3, 5}.

That's 10. Seeing as the same process with n-size subsets will only
give you 10 or less.

**Claim**: m <= ${n choose floor(n/2)}$

Again we will prove this near the end of the course using probability.


## Quicksort

Input: sequence of elements S of n numbers.

Output: same numbers, in a sorted order.

### Algorithm

If n = 0, or n = 1; then array already sorted. Nothing to do.

If n >= 2: Choose an index p by any means from S.

Walk along S, rearrange it such that any elements S<sub>i</sub> are
greater than S<sub>p</sub> are after S<sub>p</sub>, and any items less
than S<sub>p</sub> are before.

To sort the left and right sides, we run quicksort, recursively, on
the two partitions just developed. The base case is, as stated
before, that n = 0, or n = 1.


### How to pick a pivot
So, how do we pick a pivot element? The worst we could pick would be
the largest or smallest element, as one of the partitions would be
empty and each recursive call would decrease n by 1 rather than to
n/2 (the best we could hope for).

Let's see how this works out:

**Assume**: Pivot is always the largest element.

Let n = size of sequence.

We get an array which has n-1 elements on one side, and 0 on the
other side. We visited each element once. This gives us a running
time on the first run of n. The second one we get n-1, etc.

So we get... n + (n-1) + (n-2) + (n-3)... + 3 + 2 + 1 = (n(n+1))/2.

Which is (1/2)n^2 + (1/2)n = Ө(n^2). Which sucks.

Choosing the pivot randomly is the best strategy, because you're most
likely to get something close to the middle, and an expected running
time of n log n.
