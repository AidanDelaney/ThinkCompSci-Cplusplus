---
title: Pasifika C++
author:
  - Aidan Delaney
  - Allen B. Downey
  - Narendra Sisodiya
  - Tirtha P. Chatterjee
rights: © 1999-2018, GNU GPL Version 2
cover-image: images/cover.png
titlepage: true
---

# Introduction

## Objective

In this chapter we motivate why we study computer programming.

## Background

There are a lot of interesting things out there in the world.  You could learn about [magical realism](https://en.wikipedia.org/wiki/Magic_realism) in literature from [Borges'](https://en.wikipedia.org/wiki/Jorge_Luis_Borges) writings through to [Del Toro's](https://en.wikipedia.org/wiki/Guillermo_del_Toro) excellent movie [Pan's Labyrinth](https://en.wikipedia.org/wiki/Pan%27s_Labyrinth).  Or maybe you're interested in how [Einstein's](https://en.wikipedia.org/wiki/Albert_Einstein) theories of relativity led to [Quantum Mechanics](https://en.wikipedia.org/wiki/Quantum_mechanics).  Amidst all of these interesting topics why choose to study computer programming?  I have multiple, and sometimes contradictory views, on why I like programming.  It's essentially reductionist, to do it correctly requires great social skills and it represents about 50% of my daily universe.  I'll explain each of these claims in turn.

Computer programming is reductionist.  We study a problem and reduce the problem to it's bare bones.  As an example, we reduce everything to numbers -- we can't represent the depth and breadth how much you might love a pet, but we can represent it on a scale from 0 to 100!  After reducing the problem, we then produce a computer program that solves the problem from very basic components.  Each time you write a program it's like walking into a workshop containing a bunch of steel pipes and a furnace and being told that you have to build a motorbike.  We generally look a problems from the bottom-up; how can we solve the problem with the small number of components that are available to us.

By contrast, the people who want us to write programs --  employers, family, friends and wider society -- look at things from a top-down perspective.  They need to automate some systems in order to solve a real-world problem.  Your employer might want a program to calculate their annual tax bill, and then automatically transfer the tax payment directly to the tax authorities[^vanuatu].  The perspectives of such stakeholders is almost the opposite of reductionist.  It requires thinking about an entire system.  Moreover solving real-world problems develops excellent communication skills in order to tease out the real issues the stakeholder wants to solve.  Often stakeholders ask for a program to do X when they really want to solve problem Y.  Programmers have their own language for describing such things.  We call it the [XY Problem](https://en.wikipedia.org/wiki/XY_problem).

[^vanuatu]: This doesn't apply in Vanuatu as there is no income tax or corporation tax, but they are being introduced in the near future.

So far we've considered a reductionist bottom-up reason to study programming.  We've also briefly discussed how you also how programming can help you to develop great communication skills.  My third reason for studying programming is an argument made by [Simon Peyton Jones](https://en.wikipedia.org/wiki/Simon_Peyton_Jones).  He argues that in the 20^th^ Century we introduced the natural sciences into schools -- that is physics, chemistry and biology -- so that all adults would have a good understanding of the physical world in which we live.  In the 21^st^ Century we live much of our day outside the physical world and inside the virtual world[^dontbelieve].  Many of our relationships are mediated by social networks -- I have good friends who I've never seen.  Other simple things in life are also digital, bank transfers can be organised through a web browser and avoid standing in line in a physical bank.  There are growing trends where we use software to solve transport issues, negating the reasons to cough up $14k on a second-hand Toyota.  The virtual world has such a huge impact on our real-world that it is useful to study programming so that we can understand the building blocks of the virtual world.

[^dontbelieve]: If you don't believe me on this, then have a look around and see how many students think I can't see them texting under a desk in your next class.

So there are three reasons to study programming; the first because it's a big box of lego from which you can build really interesting things, the second because it solves interesting (and not so interesting) real-world problems that require a lot of communication and the third reason is because it give you a good understanding of the virtual universe in which we spend much of our daily life.

## What is Programming

If you're still reading you're either convinced by one of my three reasons for studying programming or you need the course credit given by passing a programming class.  Hopefully it's the former as intrinsic motivation is more likely to drive you to success than extrinsic motivation.  In both cases you know why you're studying programming, the question now becomes "what is programming?".

In one view, a program is an _unambiguous_ list of instructions.  Each time you follow the list of instructions, you will achieve the same result.  The comparison is often made with cooking, where recipes are often shared as a list of instructions.  Take for example the instructions for making a chicken lovo or umu.  In the case of lovo you might get the instructions to:

  1. Dig a pit,
  2. Build a fire,
  3. Carefully place lava rocks over the fire,
  4. Light the fire and let it burn down to embers,
  5. Season the chicken,
  6. Wrap the chicken in banana leaves,
  7. Put the wrapped chicken on the hot stones,
  8. Cover the food with earth
  9. Wait 2 hours, remove chicken and eat!

To most people, the above instructions are enough to make a great dinner.  However these instructions are ambiguous.  They don't say how deep or wide to build the pit.  They don't say how high the fire should be within the pit.  How large should the lava rocks be?  Or what do we season the chicken with?  Moreover, if you've ever made a lovo or umu you know it's a lot of effort.  Too much effort to cook a single chicken so maybe we should also place [taro](http://en.wikipedia.org/wiki/taro) and fish alongside the chicken.  The reason that the instructions can be ambiguous is because you, dear reader, are intelligent enough to fill in the blanks.

Computers, of course, are not intelligent.  They cannot fill in any blanks in an explanation.  So we need to present them with a list of instructions written in an unambiguous language.  The process of producing unambiguous explanations is called *proof* by mathematicians, but we'll call it _programming_.

### Formalisation

In order to remove ambiguity from the interpretation of sentences we're going to abandon the use of natural language.  We won't try to write our instructions in English, French or Bislama.  These are fantastic languages in which to express love or revolution.  However, the very fact that these languages allow us to express and discuss poorly defined concepts is the very reason that they are unsuitable for providing unambiguous instructions to a machine.  To program a computer we need a formal language, one in which each word and sentence has a well-defined meaning.

By writing instructions in a formal language we remove ambiguity from the instructions.  It's also important to note that we also loose something in translation.  A bunch of instructions that describe making a traditional lovo can be read and understood by any literate person.  Lovo instructions written in an unambiguous language are likely to be very difficult to read.  In order to illustrate this I need to introduce a problem that is much more straightforward than making a lovo.  Let's consider the kids game _hangman_.

The game _hangman_ is played by kids in schools all over the world.  One student chooses a secret word and writes a number of dashes on a piece of paper.  There is one dash for each letter of the secret word.  The same person also draws a gallows[^hangman].  A friend then guesses letters of the secret word.  If they correctly guess a letter of the word then the letter is written on a dash in an appropriate position.  If they do not guess correctly then a bit of a stick man is drawn hung on the gallows.  The friend wins the game if they correctly reveal all the letters of the word before the full stick man is drawn on the page.

[^hangman]: The name _hangman_ and drawing a gallows are pretty awful, but then again most kids are awful!

Our previous paragraph is a reasonable explanation of the game.  Again, like our lovo example, you're probably able to fill in the bits where I've explained it poorly.  What if we had to write the instructions of the game in a way that they couldn't be misinterpreted?  Legal people commonly write such instructions:

>> The game of hangman, herein referred to as THE GAME, is a game for two parties referred to as THE PLAYER and THE JUDGE.
>>
>>  (a) THE JUDGE will draw on paper a gallows and below the gallows a series of dashes where there is one dash for each letter of a secret word.
>>      * THE JUDGE will not prima-facia reveal the secret word to THE PLAYER
>>  (b) THE PLAYER will guess a letter of the secret word and
>>      * if the guessed letter is one or more letters in the secret word, then THE JUDGE writes the guessed letters on top of a dash that is at the same position in the series as the guessed letter in the secret word.
>>      * otherwise THE JUDGE will draw the next body part of a stick man on the gallows.
>>  (c) the body parts of a stick man are drawn in progression, on per turn, starting with a head, a body, a left leg, a right leg, a left arm and a right arm.
>>  (d) THE JUDGE wins the game if the stick man is drawn before the secret word is revealed.


The legal code for _hangman_ is useful when two players need to argue about the implementation of a rule.  We can still argue about the interpretation of some of the rules; should the judge draw the arm as an upper arm and lower arm?  Can the player guess two letters at a time?[^legalese]  In our case we want our rule to be interpreted by a machine that can't argue about how to implement a rule.  We know our machines have no intelligence.  They can simply replace symbols with other symbols

[^legalese]: A solicitor could write these rules in a different way.  They could first formalise the definition of a turn and then describe the progress of the game as a series of turns.  In any case the formalisation into legal language adds more complexity than the informal explanation.

<!--- I take a slightly different view of programming from many other texts.  Often a program is seen as the object we want to produce.  By contrast, I see it as an artefact of the production process.  The reality of programming is that we get a bunch of smart people together in order to write a solution to a problem in an unambiguous language.  Under this interpretation the program itself is a difficult-to-read document that explains how the development team understand the problem. -->

Hopefully you now agree that our natural languages, even when restricted to legal language, are not precise enough to instruct a dumb computer.  We need languages that are un-natural.  We need formal languages that are suited to describing how to manipulate symbols and "move" symbols around.  Such a language is going to be difficult to read because of its lack of expressiveness.  It doesn't have the expressive _bandwidth_ of a natural language.

In a more formal language designed for computation -- a **programming language** -- we have to write a lot of instructions to describe hangman.  The instructions might look something like:

```
start program
run instructions to construct gallows
run instructions to input secret word
repeat run instructions to take a turn until the game is over
end program

instructions to take a turn
ask the player to input a single character
read in a single character
if the single character is in the secret word
then run instructions to uncover characters
otherwise run instructions to draw next stroke
end instructions to take a turn
```

I've omitted a _lot_ of detail above in order to make it readable.  I've also kept my example formal language as close to English as possible.  In the C++ programming language the code to `start program` and `run instructions to construct gallows` might look like :

```c++
int main() {
  construct_gallows();
}
```

It's a lot more compact than my English-like language.  It is also much more difficult to read.  We want to learn C++, which I'll delve into below, but first we'll look at what computers can do in order to better motivate why we want to learn such a precise language[^cashmoney].

[^cashmoney]: Assuming you're not already motivated by the huge salaries that programmers command!  Or in the immortal words of MC Solaar "Du cash-money... Une voiture rouge. Donne-moi tout ça sinon faut qu'tu bouges".

## What can Computers Do?

It's obvious that a computer can't cook a lovo.  So why should we bother devising instructions for them in complicated looking formal languages?  Simply put, computers are insanely quick at performing mathematical operations.  So if you can formalise the solution to your problem in terms of mathematical operations then a computer can solve it quickly.  As an example, there are around 3000 staff at the University of the South Pacific.  To calculate the monthly pay packet for a staff member might take a clerical assistant about a minute or two, which is roughly a week of work in total.  A computer can perform the same functions in less than a second.  Moreover, if the instructions given to the computer are correct, then the computer will not make a mistake on any pay packet.  From an organisational point of view this allows us to free staff from boring repetitive work.  We can then use those staff for tasks that humans are better suited to, such as teaching or research.

The example of calculating pay packets demonstrates how completing mathematical operations quickly is of use.  Some other uses of computers are less clear.  Consider the last movie you watched on a computer.  The movie is stored in a file.  The file is a sequence of numbers that, roughly speaking, can be interpreted as 25 pictures per second.  Each picture states the colour of pixels on the screen.  The act of watching the movie requires a program that interprets the data file and plays the 25 pictures per second on your screen.  Again, we're only using mathematical operations to calculate colour values and moving symbols around inside the memory of the computer.

You might not consider the fuel injector of a boat engine to be a job best handled by a computer.  It is the case though that all modern engines use a computer, referred to as the [_engine control unit_](https://en.wikipedia.org/wiki/Engine_control_unit).  The job of the engine control unit is often to control the timing of firing each cylinder in the engine.  In many cases the control unit can read a stream of numbers provided to it from the engine exhaust and adjust the engine to run within pre-determined environmental limits.  One practical outcome of this approach is a reduction in the amount of fuel used by an engine.  This is something that is simply impractical to achieve without a computer in control.

So we know that computers are useful for movie night and driving to the movies.  You can find other applications of computers in medical devices and -- obviously -- in mobile phones and running the entire Internet!  We know that computers can do a lot, leading to the interesting question asking whether there are things that computers can't do?

## What Computers Can't Do

Computers can be used to solve many problems.  Are there problems that computers can't solve?  The short answer is "yes", but a longer answer is more interesting.  The idea of a computer was defined in 1936 by the mathematician [Alan Turing](http://en.wikipedia.org/wiki/Alan_Turing).  His idea has three very practical consequences:

  1. If it can't be formalised then it can't be computed,
  2. There are some formalised problems that can't be computed,
  3. There are a large number of practical problems that can be computed but take too long to compute.

The first is a fairly obvious consequence of the previous discussion on formalisation.  Humans can't seem to agree on a definition of _love_ or even of what good music is.  As these ideas can't be formalised in our formal language, then they can't be computed.  The second point is not obvious and was the central point of Turing's [definition of computing](http://www.turingarchive.org/browse.php/B/12).  There are problems that can be formalised but cannot be computed on a computer.  One of these is the measure of [minimum amount of information](https://en.wikipedia.org/wiki/Kolmogorov_complexity) necessary to construct an original information source.  You've probably used an approximation to this measurement.  The `.zip` file format stores information compressed by an algorithm that approximates this problem.  We can't give you the very smallest `.zip` file that represents your original information but we can give you a good guess at it.

The third consequence is again non-obvious but you use it every single day.  Almost all encryption on the web, that is `HTTPS` traffic, is based on a problem that can be computed but simply takes too long to reverse.  Another problem, called the [travelling salesperson problem](https://en.wikipedia.org/wiki/Travelling_Salesman_Problem) (TSP), also illustrates how some computable problems take too long to compute.  The TSP asks us to compute the quickest way to visit all USP campuses.  USP has a on campus in Suva, Lautoka and Labasa in Fiji, it takes 3 hours to travel between Suva and Lautoka, 16 hours to travel between Suva and Labasa and 26 hours to travel between Lautoka and Labasa, this is visualised in figure {@fig:tsp}.

![The travelling salesperson problem](images/tsp.png){#fig:tsp}

[^undirected]: You'll note that if this graph had a quick way of going from Suva to Lautoka but a slow way of getting from Lautoka to Suva, then there would be 6 combinations.  We're dealing with the _undirected_ case here.

I've turned the statement of the problem into a graph.  This makes it a bit easier to focus on the actual problem, not on details such as exactly how we get from Suva to Lautoka.  Given this kind of graph the TSP asks what is the shortest path in the graph that passes through all campuses?  We can start in Suva and end in Lautoka or we can start in Lebasa and end in Suva.  In this graph there are 3 combinations[^undirected] of starting and ending points:

  1. Suva to Lautoka (via Lebasa),
  2. Suva to Lebasa (via Lautoka), and
  3. Lautoka to Lebasa (via Suva).

For 3 campuses it's easy to work out which is the shortest route through all.  You can probably do it in your head.  As we in more campuses, say Port Vila in Vanuatu and Apia in Samoa, we find that the number of combinations is huge.  Computer Scientists[^awesome] have worked out that for 5 campuses there are $5^2 \times 2^5$ routes to calculate, that's $800$ routes to calculate in total.  If we make an assumption that it takes 1 micro second to calculate a route then, for 5 campuses, it takes less than a second to find the cost of all routes.  That's great and much quicker than a human could do it.

[^awesome]: All Computer Scientists are awesome people.  They're also very intelligent and witty individuals.

Keep in mind I said that this problem takes a long time to compute.  It appears that so-far I've not been telling the truth.  Suppose then that we add in all the USP campuses and the costs of travelling (in time) between each campus.  There is one campus in each of 11 countries and then 3 campuses in Fiji, a grand total of 14.  Just for fun we can also add in the University of Auckland as I have some research colleagues there and Université de la Nouvelle-Calédonie because that covers all the teams that play in the Suva 7's Rugby tournament.  For $16$ campuses of various universities there are a lot of routes to calculate:

$$
16^2\times 2^{16} = 16777216.
$$

If we make the same assumption that a route costs 1 micro second to calculate then it will take 16777 seconds, or 279 minutes or 4.65 hours to calculate the correct answer.  Again, if we transpose the problem to the EU, which (currently) contains 28 countries, we find that the TSP between each of the capital cities in the EU produces 210453397504 combinations or 6.6 *years* of computation.  As the problem grows in size, the time it takes to solve the problem grows by an unmanageable amount.  This is a direct consequence of Turing's definition of computation.  Interestingly, there is an unproved hypothesis that says that if you can think of any other way of making a physical machine that can do computing, then your machine will only ever compute exactly what Turing described.  This is the [Church-Turing Thesis](https://en.wikipedia.org/wiki/Church%E2%80%93Turing_thesis).

So we now have reasons to study Computer Science and we have some insight into why we have to learn a formal language in order to write computer programs.  In this book we use C++ as our formal language.  There are other computer programming languages, so why do we learn this particular one?

## Why C++

C++[^mcpp] is a powerful programming language which has been used in industry for over 30 years.  Many of the software applications that you use day-to-day are written in C++.  These include your web-browser [^webbrowser] and your word-processor [^wordprocessor].

[^mcpp]: Not to be confused with the Nerd Core rapper [MC plus +](http://nerdcorerisingmovie.com/mc-plus.html).
[^webbrowser]: Each of [Firefox](https://www.mozilla.org/en-US/firefox/new/), Chrome and Edge are largely written in C++.
[^wordprocessor]: Both [Libreoffice Writer](http://libreoffice.org/) and Microsoft Word are written in C++.

The C++ language is a **standard**.  This means that the great and the good of C++ programming get together regularly to improve the language.  They produce a document that describes the latest version of C++.  The current version of this document is C++17.  It's the version of the standard that was produced in 2017.  We expect the next version of the standard to be agreed in 2020 and it will be called C++20.  I take the view in this book that we only work with modern C++ and in the ways that modern C++ programmers should work.  This means that I assume we're working with, at least, C++14.

Like many programming languages, C++ is written in text files, normally with a `.cpp` file extension.  These files simply contain plain-text and you can edit them with any editor that allows you to open text (note: this excludes word processors -- word processors don't edit plain text, they're much more complex than that in order to look like you're editing an A4 size page.)  The C++ files are then **compiled** into a program.  The understandable C++ is translated into an non-understandable sequence of 1's and 0's i.e binary machine code.  A **compiler** translates from C++ to machine code.

With C++ we can choose to use a number of compilers from different vendors.  Because of the C++ standard document we have a high guarantee that code that compiles using one compiler will operate in the same way it does when compiled with another compiler.  The main C++ compilers are:

GCC
: [The GNU Compiler Collection](http://gcc.gnu.org/) contains a very high-performance C++ compiler that runs on many operating systems and on many computer architectures.  The Linux kernel and LibreOffice prefer to use GCC as they have to run on a variety of platforms.  GCC is an open-source project and is free of cost to download and redistribute.

LLVM
: [The LLVM Compiler Suite](https://llvm.org/) also contains a C++ compiler.  Google's Chrome browser prefers this compiler and it's the default C++ compiler on Apple systems.  LLVM is also open-source and free of cost.

Visual C++
: [Microsoft](https://en.wikipedia.org/wiki/Microsoft_Visual_C%2B%2B) have their own C++ compiler that only runs on their Microsoft Windows operating system.

Intel, HP and IBM also have C++ compilers for various systems.  Often these are very specialised high-performance computing machines.  High-performance engineers love C++!  Games programmers, particularly on consoles, also tend to prefer C++.  But like everything in computing this is subject to constant change.

We now know that a compiler is a program that reads a high-level program and
translates it all at once, before executing any of the commands.
Often you compile the program as a separate step, and then
execute the compiled code later.  In this case, the high-level
program is called the **source code**, and the translated
program is called the **object code** or the **executable**.

As an example, suppose you write a program in C++.  You might
use a text editor to write the program (a text editor is
a simple word processor).  When the program is finished, you
might save it in a file named `program.cpp`, where "program"
is an arbitrary name you make up, and the suffix `.cpp` is
a convention that indicates that the file contains C++ source
code.

Then, depending on what your programming environment is like,
you might leave the text editor and run the compiler.  The
compiler would read your source code, translate it, and create
a new file named `program.o` to contain the object code,
or `program.exe` to contain the executable.  (Aside: on Microsoft Windows executable files have the `.exe` extension, on Unix (on x86) the files do not have to have a certain extension, but contain what's known as a _magic number_, the characters `.`, `E`, `L' and `F' as the first four characters in the file.)

![The compilation process](images/compile.png)


The next step is to run the program, which requires some kind
of executor.  The role of the executor is to load the program
(copy it from disk into memory) and make the computer start
executing the program.

Although this process may seem complicated, the good news is that in
most programming environments (sometimes called development
environments), these steps are automated for you.  Usually you will
only have to write a program and type a single command to compile and
run it.  On the other hand, it is useful to know what the steps are
that are happening in the background, so that if something goes wrong
you can figure out what it is.

## What we can do now

We now have an understanding of the need for computation and we understand the limits of computation.  We write software as a sequence of instructions in a formal language which is compiled into executable code.
