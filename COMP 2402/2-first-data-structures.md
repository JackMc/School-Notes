# First Data structures

Example: We want to store, externally, a list of followers of a
Twitter account. What do we need to do with this data?

* Sequential access
* Search
* Sorting
* Insert (at back)/remove

## Arrays

Should we use an array for this problem?

Probably, yes! Unfortunately arrays (at least in java) are fixed-
length and cannot change their length without reallocation.

We can store an array of anything. We're gonna use Twitter accounts,
which we'll call _Twits_.

Arrays are _Random Access_! This means that an array has the same cost
for getting any one of the elements.

## Twit Example

```java
int size = 5;
int next = 0;
Twit[] twitList = new Twit[size];

Twit twitAt(int position) { return twitList[position]; }
void insert(Twit account) {  }
void remove(int position) {  }
```

What's wrong here? ** If we just try and add something to the end,
we're gonna get an ArrayIndexOutOfBounds! **

Let's talk about remove first.

### Removing
What if we have a couple boxes representing our array, and we remove
one from the middle? Well, now we have a gap. We could leave it there
but then that complicates our Insert! (We have to compare all against
null to find a free spot).

### Singly Linked List
* A sequence of objects with a singular reference to the next node
  and some data.
* The head is the first reference in the list
* The tail is indicated by a null reference in it's "next"
