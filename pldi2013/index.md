---
layout: page
title: Tutorial at PLDI 2013
tagline: Scala, LMS and Delite for High-Performance DSLs and Program Generators
---

## Tutorial at PLDI 2013

_Scala, LMS and Delite for High-Performance DSLs and Program Generators_

The aim of this tutorial is to equip attendees with the knowledge and tools to develop high-performance DSLs and code generators. Lightweight Modular Staging (LMS) is a pragmatic approach to runtime code generation in Scala, and Delite is a compiler framework for embedded DSLs that simplifies the process of implementing DSLs for parallel computation and heterogeneous targets. This tutorial provides an overview of the technology stack, demonstrates use-cases where it has been successfully applied and guides the attendees step-by-step through creation of simple generators and DSLs.

## Coordinates

- June 16, 9AM-Noon. Co-located with [PLDI 2013](http://pldi2013.ucombinator.org) in Seattle.
- Organizers: [Tiark Rompf](http://tiarkrompf.github.io) (EPFL/Oracle), [Kunle Olukotun](http://ogun.stanford.edu/~kunle) (Stanford), [Markus Püschel](http://www.inf.ethz.ch/personal/markusp/) (ETH)
- Presenters: Tiark Rompf, Nada Amin, Kevin Brown, HyoukJoong Lee, Arvind Sujeeth, Georg Ofenbeck, Alen Stojanov


## Agenda

This tutorial will cover the following topics:

- Intro to LMS and staging in Scala (9am - 10am) 
  - [slides](https://dl.dropboxusercontent.com/u/5146003/pldi13-part1-lms.pdf), 
    [notes](http://scala-lms.github.io/tutorials/),
    [code](https://github.com/scala-lms/tutorials)
  - encoding binding-time information in the type system (`Rep[T]`)
  - program transformation using staged interpreters
  - representing lifted program expressions in the LMS graph IR
- High-performance DSLs using Delite (10am - 11am)
  - [slides pptx](https://dl.dropboxusercontent.com/u/5146003/delite-pldi-tutorial.pptx),
    [slides pdf](https://dl.dropboxusercontent.com/u/5146003/delite-pldi-tutorial.pdf)
  - an overview of existing DSLs: OptiQL, OptiGraph, OptiML
  - developing a simple linear-algebra DSL from scratch
  - using Delite for powerful generic optimizations and parallel patterns
- Generating numeric kernels  (11am - noon) 
  - [slides](http://people.inf.ethz.ch/ofgeorg/SpiralS_mini.pdf), 
    [code](https://github.com/GeorgOfenbeck/SpiralS-mini)
  - generating low-level C code for fast FFT kernels from Scala
  - emitting different code shapes from a generic source
  - empirical search / autotuning


### Presentation approach
The tutorial will consist of 4 to 6 individual overview presentations and demos (30 min to 45 min each) about the topics listed above. The demos will guide the attendees step-by-step through the process of building simple DSLs and program generators from scratch. 


### Target audience
This tutorial is aimed at researchers and practitioners interested in building domain specific languages (DSLs) and program generators for producing highly efficient code from very high-level source programs.


### Prerequisite knowledge

We expect a general knowledge of object-oriented and functional programming concepts, and a general knowledge of performance optimization techniques. Some familiarity with Scala will be helpful.



### Background on LMS
Multi-stage programming (MSP, staging for short) as established by Taha and Sheard aims to
simplify program generator development by expressing the program generator and parts of the generated code in a single program, using the same syntax. Traditional MSP languages like  MetaOCaml implement staging by providing syntactic quasi-quotation brackets to explicitly delay the evaluation of (i.e., stage) chosen program expressions. Contrary to dedicated MSP languages, LMS uses only types to distinguish the computational stages. Expressions of type Rep[T] in the first stage yield a computation of type T in the second stage. Expressions of a plain type T in the first stage will be evaluated and become constants in the generated code.
The standard Scala type system propagates information about which expressions are staged and thus performs a semi-automatic local binding-time analysis (BTA). Thus, LMS provides some of the benefits of automatic partial evaluation and of manual staging. LMS differs from earlier staging approaches in another important aspect: Instead of generating target code in one single step, LMS creates an intermediate representation of the staged code, which can be further analyzed and transformed (the LMS graph IR).

### Background on Delite
Modern computing systems are composed of increasingly parallel and heterogeneous devices and therefore new applications must be capable of targeting these devices in order to achieve high performance. Targeting these devices however is often not straightforward and requires low-level hardware-specific optimizations to maximize performance as well as utilizing multiple disparate programming models to target multiple devices. DSLs provide a solution to this problem by presenting the application developer with high level abstractions that can be transformed into efficient parallel implementations for multiple low-level programming models.  Delite is a compiler framework for building new embedded compiled DSLs that want high performance execution on heterogeneous devices. Delite is built on top of LMS and adds parallel patterns and parallel data structures. DSL authors implement domain-specific operations using Delite parallel ops, and Delite provides optimizations and code generation for multiple hardware targets. Currently supported parallel code generation includes Scala, C++, Cuda, and OpenCL.

