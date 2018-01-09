
# Iteration

## Objective

## Multiple assignment

I haven't said much about it, but it is legal in C++ to
make more than one assignment to the same variable.  The
effect of the second assignment is to replace the old value
of the variable with a new value.

```c++
  int fred = 5;
  cout << fred;
  fred = 7;
  cout << fred;
```

The output of this program is `57`, because the first
time we print `fred` his value is 5, and the second time
his value is 7.

This kind of **multiple assignment** is the reason I
described variables as a _container_ for values.  When
you assign a value to a variable, you change the contents of
the container, as shown in the figure:


![Assiging values to a variable](images/assign2.png)

When there are multiple assignments to a variable, it is especially
important to distinguish between an assignment statement and a
statement of equality.  Because C++ uses the `=` symbol for
assignment, it is tempting to interpret a statement like `a = b`
as a statement of equality.  It is not!

First of all, equality is commutative, and assignment is not.
For example, in mathematics if `a = 7` then `7 = a`.  But in
C++ the statement `a = 7;` is legal, and `7 = a;`
is not.

Furthermore, in mathematics, a statement of equality is true
for all time.  If `a = b` now, then `a` will always equal `b`.
In C++, an assignment statement can make two variables equal,
but they don't have to stay that way!

```c++
  int a = 5;
  int b = a;     // a and b are now equal
  a = 3;         // a and b are no longer equal
```

The third line changes the value of `a` but it does not
change the value of `b`, and so they are no longer equal.
In many programming languages an alternate symbol is used
for assignment, such as `<-` or `:=`, in order to
avoid confusion.

Although multiple assignment is frequently useful, you should
use it with caution.  If the values of variables are changing
constantly in different parts of the program, it can make
the code difficult to read and debug.

## Iteration

One of the things computers are often used for is the automation
of repetitive tasks.  Repeating identical or similar tasks without
making errors is something that computers do well and people do
poorly.

The two features we are going to look at are the `while`
statement and the `for` statement.

### The `while` statement

Using a `while` statement, we can write a `countdown` program:

```c++
void countdown (int n) {
  while (n > 0) {
    cout << n << endl;
    n = n-1;
  }
  cout << "Blastoff!" << endl;
}
```

You can almost read a `while` statement as if it were
English.  What this means is, "While `n` is greater than
zero, continue displaying the value of `n` and then reducing
the value of `n` by 1.  When you get to zero, output the
word 'Blastoff!'"

More formally, the flow of execution for a `while` statement
is as follows:

  * Evaluate the condition in parentheses, yielding `true`
or `false`.
  *  If the condition is false, exit the `while` statement
and continue execution at the next statement.
  * If the condition is true, execute each of the statements
between the squiggly-braces, and then go back to step 1.


This type of flow is called a **loop** because the third step loops
back around to the top.  Notice that if the condition is false the
first time through the loop, the statements inside the loop are
never executed.  The statements inside the loop are called
the **body** of the loop.

![Structure of a loop](images/for-loop.png)

The body of the loop should change the value of
one or more variables so that, eventually, the condition becomes
false and the loop terminates.  Otherwise the loop will repeat
forever, which is called an infinite loop.  An endless
source of amusement for computer scientists is the observation
that the directions on shampoo, ``Lather, rinse, repeat,'' are
an infinite loop.

In the case of `countdown`, we can prove that the loop
will terminate because we know that the value of `n` is
finite, and we can see that the value of `n` gets smaller
each time through the loop (each **iteration**), so
eventually we have to get to zero.  In other cases it is not
so easy to tell:

```c++
void sequence (int n) {
  while (n != 1) {
    cout << n << endl;
    if (n%2 == 0) {      // n is even
      n = n / 2;
    } else {             // n is odd
      n = n*3 + 1;
    }
  }
}
```

The condition for this loop is `n != 1`, so the loop
will continue until `n` is 1, which will make the condition
false.

At each iteration, the program outputs the value of `n` and then
checks whether it is even or odd.  If it is even, the value of
`n` is divided by two.  If it is odd, the value is replaced
by `3n+1`.  For example, if the starting value (the argument passed
to `sequence`) is 3, the resulting sequence is `3, 10, 5, 16, 8, 4, 2, 1`.

Since `n` sometimes increases and sometimes decreases, there is no
obvious proof that `n` will ever reach 1, or that the program will
terminate.  For some particular values of `n`, we can prove
termination.  For example, if the starting value is a power of two, then
the value of `n` will be even every time through the loop, until
we get to 1.  The previous example ends with such a sequence,
starting with 16.

Particular values aside, the interesting question is whether
we can prove that this program terminates for **all** values of n.
So far, no one has been able to prove it **or** disprove it!

One of the things loops are good for is generating
tabular data.  For example, before computers were readily available,
people had to calculate logarithms, sines and cosines, and other
common mathematical functions by hand.
To make that easier, there were books containing long tables
where you could find the values of various functions.
Creating these tables was slow and boring, and the result
tended to be full of errors.

When computers appeared on the scene, one of the initial reactions
was, "This is great!  We can use the computers to generate the
tables, so there will be no errors."  That turned out to be true
(mostly), but shortsighted.  Soon thereafter computers and
calculators were so pervasive that the tables became obsolete.

Well, almost.  It turns out that for some operations, computers
use tables of values to get an approximate answer, and then
perform computations to improve the approximation.  In some
cases, there have been errors in the underlying tables, most
famously in the table the original Intel Pentium used to perform
floating-point division.

Although a "log table" is not as useful as it once was, it still
makes a good example of iteration.  The following program outputs a
sequence of values in the left column and their logarithms in the
right column:

```c++
double x = 1.0;
while (x < 10.0) {
  std::cout << x << "\t" << log(x) << std::endl;
  x = x + 1.0;
}
```

The sequence `\t` represents a tab character. These sequences
can be included anywhere in a string, although in these examples
the sequence is the whole string.

A tab character causes the cursor to shift to the right until
it reaches one of the tab stops, which are normally every
eight characters.  As we will see in a minute, tabs are useful
for making columns of text line up.

The output of this program is

```c++
1      0
2      0.693147
3      1.09861
4      1.38629
5      1.60944
6      1.79176
7      1.94591
8      2.07944
9      2.19722
```

If these values seem odd, remember that the `log` function uses
base $e$.  Since powers of two are so important in computer science,
we often want to find logarithms with respect to base 2.  To do that,
we can use the following formula:

$$
\log_2 x = \frac {log_e x}{log_e 2}
$$

Changing the output statement to

```c++
cout << x << "\t" << log(x) / log(2.0) << endl;
```

yields

```c++
1      0
2      1
3      1.58496
4      2
5      2.32193
6      2.58496
7      2.80735
8      3
9      3.16993
```

We can see that 1, 2, 4 and 8 are powers of two, because
their logarithms base 2 are round numbers.  If we wanted to find
the logarithms of other powers of two, we could modify the
program like this:

```c++
double x = 1.0;
while (x < 100.0) {
  cout << x << "\t" << log(x) / log(2.0) << endl;
  x = x * 2.0;
}
```

Now instead of adding something to `x` each time through
the loop, which yields an arithmetic sequence, we multiply
`x` by something, yielding a _geometric sequence_.
The result is:

```c++
1      0
2      1
4      2
8      3
16     4
32     5
64     6
```

Because we are using tab characters between the columns, the
position of the second column does not depend on the number
of digits in the first column.

Log tables may not be useful any more, but for computer scientists,
knowing the powers of two is!  As an exercise, modify this program
so that it outputs the powers of two up to 65536
(that's $2^{16}$).  Print it out and memorize it.

## `for` loops

The loops we have written so far have a number of elements
in common.  All of them start by initializing a variable;
they have a test, or condition, that depends on that variable;
and inside the loop they do something to that variable,
like increment it.

This type of loop is so common that there is an alternate
loop statement, called `for`, that expresses it more
concisely.  The general syntax looks like this:

```
for (INITIALIZER; CONDITION; INCREMENTOR) {
  BODY
}
```

This statement is exactly equivalent to

```
INITIALIZER;
while (CONDITION) {
  BODY
  INCREMENTOR
}
```

except that it is more concise and, since it puts all the
loop-related statements in one place, it is easier to read.
For example:

```c++
for (int i = 0; i < 4; i++) {
  cout << count[i] << endl;
}
```

is equivalent to 

```c++
int i = 0;
while (i < 4) {
  cout << count[i] << endl;
  i++;
}
```

We prefer for loops where the bounds are known, or when we iterate over a structure (see #lists).  A `while` loop is preferred when we're waiting for some kind of event to happen.

## What we can now do
