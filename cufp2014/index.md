---
layout: page
title: Tutorial at CUFP 2014
tagline: Batteries Included - Generative Programming with Scala and LMS
---

# Batteries Included: Generative Programming with Scala and LMS

Functional language implementations have come a long way towards robustness and efficiency. Nevertheless, for hard-core systems level programming, low-level C code is still the industry standard. The drawbacks are well known: buggy systems, security vulnerabilities, poor programmer productivity, etc.

Generative programming is an alternative: writing expressive high-level programs that generate fast low-level code at runtime.

While many functional languages come with basic code generation facilities, generative programming has remained somewhat of a black art. Recent developments, however, promise to make generative programming much more accessible.

This tutorial provides a step-by-step introduction to the open-source LMS (Lightweight Modular Staging) framework, which brings runtime code generation and compilation to Scala programs.

We will present powerful generative programming patterns that enable abstraction without (performance) regret, and thus make Scala a more productive alternative to C for systems-level programming where the last drop of performance matters.

Within this half-day tutorial, we will build a SQL query engine that outperforms commercial and open source database systems and consists of just about 500 lines of high-level Scala code.

Along the way, we will discuss concepts such as mixed-stage data structures that contain both static and dynamic parts (e.g. static schema and dynamic values for data records) and staged interpreters which can be mechanically turned into compilers (e.g. for SQL queries or regular expressions).

## Coordinates

- September 05, 1:30 - 5:00 PM. Co-located with [CUFP 2014](http://cufp.org/2014/) and [ICFP 2014](http://icfpconference.org/icfp2014/) in Gothenburg.
- Presenters: [Tiark Rompf](http://tiarkrompf.github.io) (Purdue/Oracle), [Nada Amin](http://namin.net) (EPFL)
- Official link: [cufp.org/2014](http://cufp.org/2014/t11-tiark-rompf-batteries-included-generative-programming-with-scala-and-lms.html)


## Tutorial objectives
This tutorial will equip attendees with the knowledge required to use generative programming techniques in general, and Scala/LMS in particular.

To this end, the tutorial will cover the following parts:

- Generative programming ideas and key LMS concepts
  - using types to distinguish present-stage and future-stage code (T vs Rep[T])
- Demo and hands-on with small generative examples as warm-up
  - sparse matrix vector multiply (“Shonan Challenge”)
  - compiling regular expression matchers
- From a naive SQL interpreter to a fast SQL compiler, step by step, with a focus on generative design patterns
  - mixed stage data structures (static schema, dynamic values)
  - staging an interpreter yields a compiler (Futamura projection)
  - data structure specialization (fast hash-tables for joins)

## Target audience

This tutorial is aimed at programmers with a basic understanding of functional programming, systems building and performance considerations. Experience with Scala and/or generative techniques is helpful but not required.

We will use SBT and LMS. Installation instructions can be found [here](https://github.com/scala-lms/tutorials/blob/master/README.md#dependencies). Participants are not required to install anything before the tutorial, but are invited to follow along on their laptops.
