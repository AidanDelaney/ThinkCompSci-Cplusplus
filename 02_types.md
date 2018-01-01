
# `int` and Other Types

At a fundamental level in computers all information is represented as sequences of 1's and 0's.  Take, for example, the sequence $0100 0001$.  If we interpret that sequence as a whole number then it represents the number $65$.  However, if we interpret the same sequence as a printable character, then it represents the character 'A'.  Also, there are operations that we can perform on whole numbers, such as multiplication, that don't make sense to perfom on characters.  So, types will allow us to organise our data and to ensure that we only perform operations that make sense on that data.  We have seen two types, `int` and `string`.  I'll explain these now and add in some other basic types.

In C++ we have a type that represents whole numbers.  That type is `int`, short for integer.  It represents positive and negative whole numbers.  So $-256, 0$ and $1024$ are examples of `int`s.  I can create a storage space to hold an `int` inside a function:

```c++
int main() {
  int x = 42;
  return 0;
}
```

In the above code, we create a new storage space called `x`.  The storage space can only hold whole numbers.  In this case I have assigned the value $42$ to the storage space called `x`.  I can also change the number in the storage space.

```c++
int main() {
  int x = 42;
  x = -1;
  return 0;
}
```

The first statement in the `main` function `int x = 42;` does exactly what we've previous seen.  The second line, `x = -1` overwrites the value $42$ in storage space `x` with the value $-1$.  When we first mention `x` we have to tell the computer that we want `x` to be an `int`.  On subsequent uses we don't have to tell the computer the type.  The C++ compiler keeps track of that kind of information for us.  Let's use the same pattern to construct storage spaces for other types.

I can store a character:

```c++
int main() {
  char c = 'A';
  return 0;
}
```

In this code we create a storage space, called `c`, to store a `char`.  Like `int` is a shortened form of integer, the word `char` is shortened from character.  I've also had to put the 'A' character in single quotes.  This is part of the C++ language, characters are single letters and must be surrounded by single quotes.  Recall from our introduction that C++ is a formal language.  One consequence of this is that we are restricted in how we write things.

There are two other interesting types, the first is `string` and the second is `float`.  A `float` represents a number containing a decimal point.  There are technical limitations to what `float`s can represent, so you can't treat them as precisely equivalent to decimals that you know and love from maths.  For all the calculations we do in this book an `int` or a `float` is sufficient.

Let's write a more complex program that uses `string` and `float`.  In this program each `string` of characters is surrounded by double quote marks.  Moreover, the storage places in this program have more descriptive names than 'c' or 'x' used above.  It is good to use descriptive names for your storage boxes.

```c++
#include <iostream>

int main() {
  string name = "Hiro Protagoist";
  float height = 183.5;

  std::cout << name << " is " << height << " tall." << std::endl;
  return 0;
}
```

## Type Errors

## Storage Boxes

Thus far I've used the term _storage box_ to describe how we store values of a given type.  We need to develop a more precise terminology in order to describe exactly what is going on here.  The term we use is **variable**.  In the following code we **declare** a variable of type `int`.

```c++
int main() {
  int my_variable;
  return 0;
}
```

We can, as we have seen, declare a variable and *initialise* it at the same time:

```c++
int main() {
  int my_variable = 42;
  return 0;
}
```

Or we can declare it in one statement and initialise it in another:

```c++
int main() {
  int my_variable;
  my_variable = 42;
  return 0;
}
```

If we try to use a variable before we have declared it, then we are inviolation of the C++ language.  When we violate the language our compiler generates an error.