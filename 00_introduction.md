---
title: C++
author:
  - Aidan Delaney
  - Allen B. Downey
  - Narendra Sisodiya
  - Tirtha P. Chatterjee

---

# Introduction

There are a lot of interesting things out there in the world.  You could learn about [magical realism](https://en.wikipedia.org/wiki/Magic_realism) in literature from [Borges'](https://en.wikipedia.org/wiki/Jorge_Luis_Borges) writings through to [Del Toro's](https://en.wikipedia.org/wiki/Guillermo_del_Toro) excellent movie [Pan's Labyrinth](https://en.wikipedia.org/wiki/Pan%27s_Labyrinth).  Or maybe you're interested in how [Einstein's](https://en.wikipedia.org/wiki/Albert_Einstein) theories of relativity led to [Quantum Mechanics](https://en.wikipedia.org/wiki/Quantum_mechanics).  Amidst all of these interesting topics why choose to study computer programming?  I have multiple, and sometimes contradictory views, on why I like programming.  It's essentially reductionist, to do it correctly requires great social skills and it represents about 50% of my daily universe.  I'll explain each of these claims in turn.

Computer programming is reductionist.  We study a problem and reduce the problem to it's bare bones.  As an example, we reduce everything to numbers -- we can't represent the depth and breadth how much you might love a pet, but we can represent it on a scale from 0 to 100!  After reducing the problem, we then produce a computer program that solves the problem from very basic components.  Each time you write a program it's like walking into a workshop containing a bunch of steel pipes and a furnace and being told that you have to build a motorbike.  We generally look a problems from the bottom-up; how can we solve the problem with the small number of components that are available to us.

By contrast, the people who want us to write programs --  employers, family, friends and wider society -- look at things from a top-down perspective.  They need to automate some systems in order to solve a real-world problem.  Your employer might want a program to calculate their annual tax bill, and then automatically transfer the tax payment directly to the tax authorities[^vanuatu].  The perspectives of such stakeholders is almost the opposite of reductionist.  It requires thinking about an entire system.  Moreover solving real-world problems develops excellent communication skills in order to tease out the real issues the stakeholder wants to solve.  Often stakeholders ask for a program to do X when they really want to solve problem Y.  Programmers have their own language for describing such things.  We call it the [XY Problem](https://en.wikipedia.org/wiki/XY_problem).

[^vanuatu]: This doesn't apply in Vanuatu as there is no income tax or corporation tax, but they are being introduced in the near future.

So far we've considered a reductionist bottom-up reason to study programming.  We've also briefly discussed how you also how programming can help you to develop great communication skills.  My third reason for studying programming is an argument made by [Simon Peyton Jones](https://en.wikipedia.org/wiki/Simon_Peyton_Jones).  He argues that in the 20^th^ Century we introduced the natural sciences into schools -- that is physics, chemistry and biology -- so that all adults would have a good understanding of the physical world in which we live.  In the 21^st^ Century we live much of our day outside the physical world and inside the virtual world[^dontbelieve].  Many of our relationships are mediated by social networks -- I have good friends who I've never seen.  Other simple things in life are also digital, bank transfers can be organised through a web browser and avoid standing in line in a physical bank.  There are growing trends where we use software to solve transport issues, negating the reasons to cough up $14k on a second-hand Toyota.  The virtual world has such a huge impact on our real-world that it is useful to study programming so that we can understand the building blocks of he virtual world.

[^dontbelieve]: If you don't believe me on this, then have a look around and see how many students think I can't see them texting under a desk in your next class.

So there are three reasons to study programming; the first because it's a big box of lego from which you can build really interesting things, the second because it solves interesting (and not so interesting) real-world problems that require a lot of communication and the third reason is because it give you a good understanding of the virtual universe in which we spend much of our daily life.

## What is Programming

If you're still reading you're either convinced by one of my three reasons for studying programming or you need the course credit given by passing a programming class.  Hopefully it's the former as intrinsic motivation is more likely to drive you to success than extrinsic motivation.  In both cases you know why you're studying programming, the question now becomes "what is programming?".

In one view, a program is an _unambiguous_ list of instructions.  Each time you follow the list of instructions, you will achieve the same result.  The comparison is often made with cooking, where recipes are often shared as a list of instructions.  Take for example the instructions for making a chicken lovo or umu.  In the case of lovo you might get the instructions to:

  1. Dig a pit,
  2. Build a fire,
  3. Carefully place lava rocks over the fire,
  4. Light the fire and let it burn down to embers,
  5. Put the hot rocks in the pit,
  6. Season the chicken,
  7. Wrap the chicken in banana leaves,
  8. Put the wrapped chicken on the hot stones,
  9. Cover the food with earth
  10. Wait 2 hours, remove chicken and eat!

To most people, the above instructions are enough to make a great dinner.  However these instructions are ambiguous.  They don't say how deep or wide to build the pit.  They don't say how high the fire should be within the pit.  How large should the lava rocks be?  Or what do we season the chicken with?  Moreover, if you've ever made a lovo or umu you know it's a lot of effort.  Too much effort to cook a single chicken so maybe we should also place [taro](http://en.wikipedia.org/wiki/taro) and fish alongside the chicken.  The reason that the instructions can be ambiguous is because you, dear reader, are intelligent enough to fill in the blanks.

Computers, of course, are not intelligent.  They cannot fill in any blanks in an explanation.  So we need to present them with a list of instructions written in an unambiguous language.  The process of producing unambiguous explanations is called *proof* by mathematicians, but we'll call it _programming_.

### Formalisation

In order to remove ambiguity from the interpretation of sentences we're going to abandon the use of natural language.  We won't try to write our instructions in English, French or Bislama.  These are fantastic languages in which to express love or revolution.  However, the very fact that these languages allow us to express and discuss poorly defined concepts is the very reason that they are unsuitable for providing unambiguous instructions to a machine.  To program a computer we need a formal language, one in which each word and sentence has a well-defined meaning.

By writing instructions in a formal language we remove ambiguity from the instructions.  It's also important to note that we also loose something in translation.  A bunch of instructions that describe making a traditional lovo can be read and understood by any literate person.  Lovo instructions written in an unambiguous language are likely to be very difficult to read.  In order to illustrate this I need to introduce a problem that is much more straightforward than making a lovo.  Let's consider the kids game _hangman_.

The game _hangman_ is played by kids in schools all over the world.  One student chooses a secret word and writes a number of dashes on a piece of paper.  There is one dash for each letter of the secret word.  The same person also draws a gallows[^hangman].  A friend then guesses letters of the secret word.  If they correctly guess a letter of the word then the letter is written on a dash in an appropriate position.  If they do not guess correctly then a bit of a stick man is drawn hung on the gallows.  The friend wins the game if they correctly reveal all the letters of the word before the full stick man is drawn on the page.

[^hangman]: The name _hangman_ and drawing a gallows are pretty awful, but then again most kids are awful!

Our previous paragraph is a reasonable explanation of the game.  Again, like our lovo example, you're probably able to fill in the bits where I've explained it poorly.  What if we had to write the instructions of the game in a way that they couldn't be misinterpreted?  Legal people commonly write such instructions.  FIXME


The legal code for _hangman_ is useful when two players need to argue about the implementation of a rule.  In our case we want our rule to be interpreted by a machine that can't argue about how to implement a rule.  We know our machines have no intelligence.  They can simply replace symbols with other symbols

I take a slightly different view of programming from many other texts.  Often a program is seen as the object we want to produce.  By contrast, I see it as an artefact of the production process.  The reality of programming is that we get a bunch of smart people together in order to write a solution to a problem in an unambiguous language.  Under this interpretation the program itself is a difficult-to-read document that explains how the development team understand the problem.

TODO: Expand this.

## What can Computers Do?

It's obvious that a computer can't cook a lovo.  So why should we bother devising instructions for them in complicated looking formal languages?  Simply put, computers are insanely quick at performing mathematical operations.  So if you can formalise the solution to your problem in terms of mathematical operations then a computer can solve it quickly.  As an example, there are around 3000 staff at the University of the South Pacific.  To calculate the monthly pay packet for a staff member might take a clerical assistant about a minute or two, which is roughly a week of work in total.  A computer can perform the same functions in less than a second.  Moreover, if the instructions given to the computer are correct, then the computer will not make a mistake on any pay packet.  From an organisational point of view this allows us to free staff from boring repetitive work.  We can then use those staff for tasks that humans are better suited to, such as teaching or research.

The example of calculating pay packets demonstrates how completing mathematical operations quickly is of use.  Some other uses of computers are less clear.  Consider the last movie you watched on a computer.  The movie is stored in a file.  The file is a sequence of numbers that, roughly speaking, can be interpreted as 25 pictures per second.  Each picture states the colour of pixels on the screen.  The act of watching the movie requires a program that interprets the data file and plays the 25 pictures per second on your screen.  Again, we're only using mathematical operations to calculate colour values and moving symbols around inside the memory of the computer.

You might not consider the fuel injector of a boat engine to be a job best handled by a computer.  It is the case though that all modern engines use a computer, referred to as the [_engine control unit_](https://en.wikipedia.org/wiki/Engine_control_unit).  The job of the engine control unit is often to control the timing of firing each cylinder in the engine.  In many cases the control unit can read a stream of numbers provided to it from the engine exhaust and adjust the engine to run within pre-determined environmental limits.  This is something that is simply impractical to achieve without a computer in control.

So we know that computers are useful for movie night and driving to the movies.  You can find other applications of computers in medical devices and -- obviously -- in mobile phones and running the entire Internet!  We know that computers can do a lot, leading to the interesting question asking whether there are things that computers can't do?

## What Computers Can't Do

## Why C++

C++ is a powerful programming language which has been used in industry for over 30 years.  Many of the software applications that you use day-to-day are written in C++.  These include your web-browser [^webbrowser] and your word-processor [^wordprocessor].  

[^webbrowser]: Each of [Firefox](https://www.mozilla.org/en-US/firefox/new/), Chrome and Edge are largely written in C++.
[^wordprocessor]: Both [Libreoffice Writer](http://libreoffice.org/) and Microsoft Word are written in C++.
