
# Lists

## Objective

## A `vector`

A **vector** is a list of values where each value is identified by a
number (called an index).  The nice thing
about vectors is that they can be made up of any type of element,
including basic types like `int`s and `float`s.

The `vector` type is defined in the C++ Standard Template Library (STL).
In order to use it, you have to include the header file
`vector`:

```c++
#include <vector>
```

You can create a vector the same way you create other variable types:

```c++
std::vector<int> count;
std::vector<float> floatVector;
```

The type that makes up the vector appears in angle brackets `<`
and `>`.  The first line creates a vector of integers named
`count`; the second creates a vector of `float`s.  Although these
statements are legal, they are not very useful because they create
vectors that have no elements (their size is zero).  It is more
common to specify the size of the vector in parentheses:

```
std::vector<int> count (4);
```

The syntax here is a little odd; it looks like a combination of a
variable declarations and a function call.  In fact, that's exactly
what it is.  The function we are invoking is an `vector`
constructor.  A **constructor** is a special function that creates
new objects and initializes their instance variables.  In this case,
the constructor takes a single argument, which is the size of the new
vector.

The following figure shows how vectors are represented in state
diagrams:


![Visualising a `vector`](images/vector.png)


The large numbers inside the boxes are the **elements** of
the vector.  The small numbers outside the boxes are the
indices used to identify each box.  When you allocate a new
vector, the elements are not initialized.  They could contain
any values.

There is another constructor for `vector`s that takes
two parameters; the second is a "fill value," the
value that will be assigned to each of the elements.

```c++
std::vector<int> count (4, 0);
```

This statement creates a vector of four elements and initializes
all of them to zero.

## Accessing elements

The `[]` operator reads and writes the elements of a vector in
much the same way it accesses the characters in an `string`.  As
with `string`s, the indices start at zero, so `count[0]`
refers to the "zeroeth" element of the vector, and `count[1]`
refers to the "oneth" element.  You can use the `[]` operator
anywhere in an expression:

```c++
count[0] = 7;
count[1] = count[0] * 2;
count[2]++;
count[3] -= 60;
```

All of these are legal assignment statements.  Here is the
effect of this code fragment:

![An example vector](images/vector2.png)

Since elements of this vector are numbered from 0 to 3, there is no
element with the index 4.  It is a common error to go beyond the
bounds of a vector, which causes a run-time error.  The program outputs
an error message like "Illegal vector index", and then quits.

You can use any expression as an index, as long as it has type 
`int`.  One of the most common ways to index a vector is with a loop
variable.  For example:

```c++
int i = 0;
while (i < 4) {
  std::cout << count[i] << std::endl;
  i++;
}
```

This `while` loop counts from 0
to 4; when the loop variable `i` is 4, the
condition fails and the loop terminates.  Thus, the body
of the loop is only executed when `i` is 0, 1, 2 and 3.

Each time through the loop we use `i` as an index into
the vector, outputting the `i`th element.  This type of
vector traversal is very common.

## Better Iteration

The C++11 standard added some syntax that allows more straightforward `for`
loops to be written over vectors.  An example of a C++11 for loop is the
following:

```c++
for(auto c: count) {
  std::cout << c << std::endl;
}
```

Here we see that

  * the syntax of a `for` loop has been simplified, and
  * the use of the `auto` keyword to deduce the type of `c`.

The advantage of this newer notation is that we cannot overstep the boundary of
the `count` vector.  Suppose `count` contains $5$ elements.  Using the
older notation we could write

```c++
  for (int i = 0; i < 6; i++) {
    std::cout << count[i] << std::endl;
  }
```

which is incorrect as it tries to access `count[5]` which is not an element
`count`.  The new notation protects us programmers from making such common
errors (yes really! you'd be surprised how often these off-by-one errors are
made).


## Copying vectors

There is one more constructor for `vector`s, which is
called a copy constructor because it takes one `vector`
as an argument and creates a new vector that is the same size,
with the same elements.

```c++
  vector<int> copy (count);
```

Although this syntax is legal, it is almost never used for
`vector`s because there is a better alternative:

```c++
  vector<int> copy = count;
```

The `=` operator works on `vector`s in pretty much
the way you would expect.

## Vector size

There are a few functions you can invoke on an
`vector`.  One of them is very useful, though: `size()`.
Not surprisingly, it returns the size of the vector (the number
of elements).

It is a good idea to use this value as the upper bound of a loop,
rather than a constant.  That way, if the size of the vector
changes, you won't have to go through the program changing all the
loops; they will work correctly for any size vector.

```c++
  for (int i = 0; i < count.size(); i++) {
    cout << count[i] << endl;
  }
```

Though you should use the {#better itreration} example above to iterate over a vector.

The last time the body of the loop gets executed, the value of `i`
is `count.size() - 1`, which is the index of the last element.  When
`i` is equal to `count.size()`, the condition fails and the body
is not executed, which is a good thing, since it would cause a
run-time error.



## Vector functions

The best feature of a vector is its resizeability A vector, once declared,
can be resized from anywhere within the program. Suppose we have a situation
where we input numbers from the user and store them in a vector till he
inputs `-1`, and then display them. In such a case, we do not know the size of the
vector beforehand. So we need wish add new values to the end of
a vector as the user inputs them. We can use then vector
function `push\_back()` for that purpose.

```c++
  #include<iostream>
  #include<vector>

  using namespace std;
  int main()
  {
    vector<int> values;
    int c,i,len;
    cin >> c;
    
    while(c != -1) {
      values.push_back(c);
      cin >> c;
    }

    for(auto i: values) {
      cout << i << endl;
    }
  }
```

## What we can now do
