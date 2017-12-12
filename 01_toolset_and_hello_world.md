# Hello World

It's traditional to begin programming by writing a program that prints "Hello, world" on the screen.  We will do this in the most simple way that we possibly can.  However, this requires us to use a pretty ancient way of interacting with a computer.  You might imagine that opening a window onscreen and writing "Hello, world" in that window requires a [reasonable amount of code](https://developer.gnome.org/gtkmm-tutorial/stable/sec-helloworld.html.en).  So we'll avoid using windows and mouse input.  We're going straight back to the kinds of interfaces everyone used in the 1980's and that are primarily only used server-side in this decade.  In order to use this interface, which we'll call the *console*, I'll explain some of the features and limitations.

The console is a boring window.  You can write text to it, one character at a time and one line at a time.  It is a text-only interface.  On Microsoft Windows a console is provided by [PowerShell](https://en.wikipedia.org/wiki/Powershell) on Linux and other Unix-like systems the console is provided by a terminal emulator as seen in figure {@fig:console}.  The console can trace it's roots to around 1964, so you can't expect it to work like the nice interface that you find on your phone or your desktop computer.  The best analogy I've found is to think of it like text messaging[^sms] your computer and the computer responding with a reply text message.  The interface feels clunky and error-prone to modern computer users.  We are only using the console because of the simplicity of writing programs that use it.

![Text-only console (image [from Wikipedia](https://commons.wikimedia.org/wiki/File:Version_7_UNIX_SIMH_PDP11_Kernels_Shell.png)) ](images/Version_7_UNIX_SIMH_PDP11_Kernels_Shell.jpeg){#fig:console}

[^sms]: By text messaging I mean [Short Message Service (SMS)](https://en.wikipedia.org/wiki/SMS)

## First Program

Most of our first program will seem to be magic.  But all of it is understandable if you take time.  Just remember that in C++ each non-whitespace character is important.  Whitespace characters are tabs, spaces and new-lines.  Let's have a look:

```c++
#include <iostream>

int main() {
  std::cout << "Hello, world" << std::endl;
  return 0;
}
```

The first line `#include <iostream>` is a direction to bring functionality for writing to the console into our program.  The `iostream` functionality defines `std::cout` and `std::endl` and the weird `<<` thing (called the *ostream operator*).  We'll return to understanding exactly what these mean a little later.  First I'd like to introduce `main`.

All C++ programs start in a _function_ called `main`.  This is something defined by the C++ standard.  It could have been called `start` or `begin_here`, but it wasn't.  For traditional reasons the starting point of a C++ program is called `main`.  It's not called `Main`, which is different from `main`.  Almost all programming languages, including C++, are case-sensitive.  So the function name `Main` is not the function named `main` because the initial letters differ in capitalisation.  I'll repeat that each non-whitespace character in a C++ program is important.

The `main` function starts at the opening curly brace `{` and ends at the closing curly brace `}`.  In programming we often use brackets, so we have to refer to them correctly.  Our program uses

parentheses
: `(` is a left parenthesis and `)` is a right parenthesis.  You might commonly call these brackets, but programmers use the technical names for them.

braces
: we've already seen `{` and `}` referred to as braces or curly braces.

angular brackets
: the `<` and `>` characters are left and right angular brackets respectively.

In addition to the various types of brackets our program contains colons, `:`, and semi-colons, `;`.  It's easy to confuse `:` and `;`.

Now that we've gotten all that out of the way, we can examine the *body* of the `main` function (the two lines between the curly braces).  The first of these two lines is the most interesting.  The line

```c++
std::cout << "Hello, world" << std::endl;
```

says a lot, it directs -- using the ostream operator `<<` -- the string of text, "Hello, world", followed by an end of line character, `std::endl` to the console.  The console is represented by `std::cout`.  We may think of `std::cout` being the **st**andar**d** **c**onsole **out**put.  Keep in mind that "Hello, world" is a **string**.  We will look at string, int and some other **types** in the later section [`int` and Other Types].

The `<<` operator makes it easy(ish) to send more interesting information to `std::cout`.

<!--- ␣ -->

### A Stylistic Note on Whitespace

Programming style is vitally important.  Our first program could also be written as follows:

```c++
#include <iostream>
int main(){std::cout<<"Hello, world"<<std::endl; return 0;}
```

Both programs do the same thing.  However, one is readable by a human and the other is very difficult to read.  There are some common styles for writing a program and I suggest you be consistent in your application of a style.  I tend to write C++ where I indent code using 4 spaces (no tabs).  If you use spaces to indent your code, then do not mix in tab characters!

I use newlines between statements, so the `std::cout` above and the `return` statement should appear on separate lines.

## `int` and Other Types
