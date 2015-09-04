# List of Twitter Accounts

## Last time
* An advantage of a linked list is that we don't have to worry about
  "gaps" (places where there is nothing).
* A disadvantage is that it is **sequential**. This means we have to
  walk the list to find a given element.

### Homework
* What happens if you need to _access_ the data much more frequently
  than inserting or removing elements? (**array**)
* What if you need to _insert_ or _remove_ more? (**linked list**
  if we need to add **only** to the head or tail, and an **array** if
  only from the end. If we are doing arbitrary inserts/deletes, we
  need to actually think more, and maybe use a better data structure.)

### So in summary...
Some data structures are better than others for certain jobs!

## A better definition
Data structure: A systematic approach to storing and accessing
(manipulating or operating on) data, so that it can be used
efficiently for a specific purpose.

## Data structures
* In our simple example, we're doing everything! What's the best?
* There must be something better for this problem...
* There are! But we'll focus on linked lists & arrays.

## Abstract data types
* In our example, both solutions had the same **interface** (methods
  and their inputs/outputs).
```java
Twit twitAt(int position);
void insert(Twit account);
void remove(int position);
```
* So you don't need to know what the implementation is! It could be
  a linked list or an array or even something we don't know yet.
* The _performance_ of these methods really isn't specified above
  so we don't know it.

### Limitations
* Generally, we don't know what implementation is under it, but it
  may matter (i.e. there may be an array of a given size under it).


## In our example...
* In our example, we specified the _Data_, and the _operations we want
  on that data_. This is all we need to implement a data structure!

## Definition!
* An **ADT** is defined as _data_ and _operations on that data_, which
  is specified _independent of any implementation_.
* Sometimes we specify performance guarantees regarding how well the
  code is gonna perform.
* An ADT is a **mathematical construct**, but the Java terms for them
  are **APIs** or **interfaces**
* A **data structure** is an implementation of an ADT
* For us, abstract data type and interface mean the same thing

## Interface vs. implementation
* Interface
  * What we can do (as a user) with the data
* Implementation
  * How the data is manipulated
* Good OO design will separate the interface and the implementation

## TwitList

```java
class Node<T> {
  T data;
  TwitNode next;
  public Node(T data) { ... }
  ...
}

class LinkedList<T> {
  Node<T> head;

  T getAt(int position) {
    ...
  }
}
```
