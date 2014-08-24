---
layout: default
title: Tutorial at ECOOP'13
tagline: Scala, LMS and Delite for High-Performance DSLs and Program Generators
---


This tutorial is an introduction to developing domain specific languages (DSLs) for productivity and performance using Scala, LMS and Delite. Lightweight Modular Staging (LMS) is a pragmatic approach to runtime code generation in Scala and Delite is a compiler framework for embedded DSLs  that simplifies the process of implementing DSLs for parallel computation and heterogeneous targets.

This tutorial provides an overview of the technology stack, presents existing high-performance DSL built using the framework, and guides the attendees through the process of creating DSLs.


## Coordinates

- Part of the [ECOOP 2013](http://www.lirmm.fr/ecoop13) [summer school](http://www.cs.purdue.edu/homes/jv/events/ESS13/) in Montpellier: Fri July 5th, 10:45am-12:15
- Presenters: [Tiark Rompf](http://tiarkrompf.github.io) (EPFL/Oracle), [Arvind Sujeeth](http://www.stanford.edu/~asujeeth/) (Stanford)

## Agenda

This tutorial will cover the following topics:

- Intro to LMS and staging in Scala (10:45am - 11:30am) - 
  [slides](https://dl.dropboxusercontent.com/u/5146003/ecoop13-part1-lms.pdf), 
  [notes](http://scala-lms.github.io/tutorials/),
  [code](https://github.com/scala-lms/tutorials)
  - encoding binding-time information in the type system (`Rep[T]`)
  - program transformation using staged interpreters
  - representing lifted program expressions in the LMS graph IR
- High-performance DSLs using Delite (11:30am - 12:15am) - 
  [slides](https://dl.dropboxusercontent.com/u/5146003/delite-ecoop-tutorial.pdf)
  - an overview of existing DSLs: OptiQL, OptiGraph, OptiML
  - developing a simple linear-algebra DSL from scratch
  - using Delite for powerful generic optimizations and parallel patterns

<!-- how to change size in markdown?
![alt text](http://www.cs.purdue.edu/homes/jv/events/ESS13/images/tiark.jpeg) --> 

Tiark Rompf is a post-doctoral researcher at EPFL and Oracle labs. His research focuses on making  high-level programming abstractions more performant through staging and advanced compiler technology. He leads the development of LMS and is a member of Martin Odersky's Scala group at EPFL.

<!-- ![alt text](http://www.cs.purdue.edu/homes/jv/events/ESS13/images/arvind.jpeg) --> 

Arvind Sujeeth is a 5th year Ph.D. student at Stanford University. His research interests include leveraging domain-specific languages as a highly productive, high performance parallel programming model. He has worked on DSLs for machine learning, graph analysis, scientific computing, and slightly recursively, for DSL development.




### Background on LMS
Multi-stage programming (MSP, staging for short) as established by Taha and Sheard aims to
simplify program generator development by expressing the program generator and parts of the generated code in a single program, using the same syntax. Traditional MSP languages like  MetaOCaml implement staging by providing syntactic quasi-quotation brackets to explicitly delay the evaluation of (i.e., stage) chosen program expressions. Contrary to dedicated MSP languages, LMS uses only types to distinguish the computational stages. Expressions of type Rep[T] in the first stage yield a computation of type T in the second stage. Expressions of a plain type T in the first stage will be evaluated and become constants in the generated code.
The standard Scala type system propagates information about which expressions are staged and thus performs a semi-automatic local binding-time analysis (BTA). Thus, LMS provides some of the benefits of automatic partial evaluation and of manual staging. LMS differs from earlier staging approaches in another important aspect: Instead of generating target code in one single step, LMS creates an intermediate representation of the staged code, which can be further analyzed and transformed (the LMS graph IR).

### Background on Delite
Modern computing systems are composed of increasingly parallel and heterogeneous devices and therefore new applications must be capable of targeting these devices in order to achieve high performance. Targeting these devices however is often not straightforward and requires low-level hardware-specific optimizations to maximize performance as well as utilizing multiple disparate programming models to target multiple devices. DSLs provide a solution to this problem by presenting the application developer with high level abstractions that can be transformed into efficient parallel implementations for multiple low-level programming models.  Delite is a compiler framework for building new embedded compiled DSLs that want high performance execution on heterogeneous devices. Delite is built on top of LMS and adds parallel patterns and parallel data structures. DSL authors implement domain-specific operations using Delite parallel ops, and Delite provides optimizations and code generation for multiple hardware targets. Currently supported parallel code generation includes Scala, C++, Cuda, and OpenCL.

