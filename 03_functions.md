
# Functions

## Objective

In the last chapter we introduced types.  We now show how to pass instances of types around a program.

## Simple Functions

We have seen an example of a function.  The `main` function is the starting point of every application.  We can write other functions too.  These are vitally important to help us organise the structure of our application.  I'm going to write a stupid function just to demonstate the concept.  All functions have a name, and this function is called `zero`.  We can call our `zero` function from another function, say `main`, and it will `return` the value `0`.

```c++
int zero() {
  return 0;
}

int main() {
  int z = zero();
  return 0;
}
```

So the above progam achieves nothing meaningful except that it demonstrates a simple function.  It doesn't produce any visible output, but it does run.  If we start the execution of the program from `main` we find that it creates a variable called `z` of type `int`.  The variable `z` is assigned a value that is returned from the call to the function named `zero`.

The signature for the function called `zero` is given by `int zero()`.  The signature provides a lot of information about the function.  The `int` part of the signature tells us that `zero` returns a value of type `int`.  The parentheses tells us that when we call the function `zero` we don't have to pass it any further information.

We can write a more useful function that multiplies a value by itself.  It's normal to call this function `square`!  If we want `square` to multiply any `int` by itself then we have to write the function so that it can be _passed_ a copy of an `int`:

```c++
int square(int x) {
  return x*x;
}
```

The signature for `square` is different from `zero`.  The signature `int square(int x)` tells us that the function is called `square` and it returns an `int`.  The interesting bit of `square` is within the parentheses.  The `int x` tells us that we must pass a copy of an `int` into the function `square`.  Inside the function `square` the passed in `int` will be called `x`.  This allows us to multiply `x` by itself: `x*x`.  The value of `x*x` is then returned from the function.

We can call `square` from `main` in the same way that we called `zero` from `main`:

```c++
int main() {
  int s = square(7);
  return 0;
}
```

## Signature before use

Recall that we have to declare a variable before we use it:

```c++
int main() {
  int x = 0;
  x = 1;
  return 0;
}
```

as

```c++
int main() {
  x = 1;
  int x = 0;
  return 0;
}
```

generates a compiler error.  We similarly must define a function before we use it.  Hence, in the above examples I've defined either `int zero()` or `int square(int x)` before they are used in `main()`.

## Multiple Parameters

A function can take more than one parameter passed to it.  So for example, I could write a function that calculates the multiplication of two integers.

```c++
int mult(int x, int y) {
  int r = x * y;
  return r;
}

int main() {
  mult(8, 9);
  return 0;
}
```

Again, it's not a very interesting exampe, but it illustrates our point clearly.  Our function is called `mult`, it returns an `int` i.e. a whole number to the calling code.  The parameter list for `mult` states that it takes a copy of two `int` values.  We call the first passed value `x` and the second passed value `y` within the function `mult`.

Functions can take any number of parameters, but it is unusual to pass in more than four values.  If you find yourself writing functions that take seven or eight parameters you might think about restruturing your code.

We can write functions that take multiple parameters, but a function can only ever return a single value.  Consider the equation for calculating the roots of a quadratic equation, a secondary-school favourite!

$$
x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}
$$

We can turn this into two functions `positive_root` and `negative_root`.  I'll present the `positive_root` version here;

```c++
#include <cmath>

float positive_root(int a, int b, int c) {
  float x = (-b + sqrt((b * b) - (4*a*c)))/(2*a);
  return x;
}
```

In this presentation I use the `sqrt` function from the `cmath` library.  The `sqrt` function returns the square root of a value.  We can't write a ffunction that returns two `float`s (in a future chapter we can return a list of `float`s).

## Testing Functions

Choose three values you know will work in the function, and choose three values you know will not work in the function.  In many simple cases there won't be values that don't work with the function; in these cases we use our types to help us.  An `int` ranges from $-2,147,483,648$ to $2,147,483,647$, so it's a good idea to check the minumum value, $0$ and the maximum value.

Choosing the min and max values to test comes from the observation that programmers make errors in boundary cases.  What happens if we call `square(2147483)`?  The use of zero as a test value comes from experience.  Again, programmers often make mistakes with zero values.  In the case of strings we might use `""`, a string containing no characters as an example input that is allowed but we may not expect.[^idvalue]

[^idvalue]: If you're a maths person, the set of strings in programming form a Monoid under concatenation where the empty string is the identity value.

If your function accepts an `int` parameter then you're allowing any possible integer input.  If you accept a `string` as a parameter, then you're allowing every possible string.  There exists a big list of naughty strings whcih can break some more advanced applications.  The list is available at [https://github.com/minimaxir/big-list-of-naughty-strings](https://github.com/minimaxir/big-list-of-naughty-strings) and you may wish to examine it.  Do note, the list contains swear words and words of an innapropriate nature for testing purposes.

### Test Harness

If you're choosing three valid test values and three invalid test values it is useful to think about how to put them into your application.  Here's a straightforward pattern to follow:

  1. Given a function with name `foo`.
  2. Write another function called `test_foo`
     - Use `assert` to validate your test cases.
  3. Run all test functions at the start of `main`.

So suppose we have our `square` function above we might also have:

```c++
#include <cassert>

void test_square() {
  int test_value1 = -2;
  int test_value2 = 3;
  int test_value3 = 100;

  int minimum_int = -2147483648;
  int maximum_int = 2147483647;
  int zero = 0;

  assert(4 == square(test_value1));
  assert(9 == square(test_value2));
  assert(10000 == square(test_value3));

  assert(0 == square(minimum_int));
  assert(1 == square(maximum_int));
  assert(0 == square(zero));
}

int main() {
  // Tests
  test_square();

  // Main Code
  int x = square(2);
  std::cout << x << std::endl;
}
```

## `void` return

Functions return values.  This makes it possible to test them.  It's also possible to write a function that doesn't return a value.  For example, if we wanted to write a function that only printed out some information, there would be no need to return a value.  Such a function has a `void` return type:

```c++
#include <iostream>

int i_return_seven() {
  return 7;
}

void i_return_nothing() {
  std::cout << "You called a function" << std::endl;
}

int main() {
  i_return_seven();
  i_return_nothing();
}
```

The example above has two simple functions, one called `i_return_seven` which, unsurprisingly, returns the value `7`.  The function `i_return_nothing` has a `void` return type.  So it does not return any value but it has some **side-effects** such that it prints some information to the console.  A function that has a `void` return type, does not need a `return` statement at the end.

## What we can now do

We can now break our program down into different functions:

```c++
#include <iostream>

int calculate_age(int founding_year) {
  return 2018 - founding_year;
}

void print_information(string university_name, int founding_year) {
  int age = calculate_age(founding_year);
  std::cout << university_name << " was founded in " << founding_year << std::endl;
  std::cout << "It is " << age << " years old." << std::endl;
}

int main() {
  int founding_year = 1968;
  print_information("USP", founding_year);
  return 0;
}
```

Using functions allows is to write smaller blocks of code.  These are *easier to test*!

By breaking your code down into small functions (let's say 10 lines maximum as a rule-of-thumb) you _will_ write higher-quality code.
