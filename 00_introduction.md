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

So far we've considered a reductionist bottom-up reason to study programming.  We've also briefly discussed how you also how programming can help you to develop great communication skills.  My third reason for studying programming is an argument made by [Simon Peyton Jones](https://en.wikipedia.org/wiki/Simon_Peyton_Jones).  He argues that in the 20^th^ Century we introduced the natural sciences into schools -- that is physics, chemistry and biology -- so that all adults would have a good understanding of the physical world in which we live.  In the 21^st^ Century we live much of our day outside the physical world and inside the virtual world[^dontbelieve].  Many of our relationships are mediated by social networks -- I have good friends who I've never seen.  Other simple things in life are also digital, bank transfers can be organised through a web browser and avoid standing in line in a physical bank.  There are growing trends where we use software to solve transport issues, negating the reasons to cough up $14k on a second-hand Toyota.  The virtual world has such a huge impact on our real-world that it is useful to study programming so that we can understand the building blocks of he virtual world.

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

I take a slightly different view of programming from many other texts.  Often a program is seen as the object we want to produce.  By contrast, I see it as an artefact of the production process.

## Why C++

[^vanuatu]: This doesn't apply in Vanuatu as there is no income tax or corporation tax, but they are being introduced in the near future.
[^dontbelieve]: If you don't believe me on this, then have a look around and see how many students think I can't see them texting under a desk in your next class.
