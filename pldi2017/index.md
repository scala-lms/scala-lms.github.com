---
layout: page
title: Tutorial at PLDI 2017
tagline: Scala, LMS and Delite for High-Performance DSLs and Program Generators
---

## Tutorial at PLDI 2017

_Scala, LMS and Delite for High-Performance DSLs and Program Generators_

The aim of this tutorial is to equip attendees with the knowledge and tools to develop high-performance DSLs and code generators. Lightweight Modular Staging (LMS) is a pragmatic approach to runtime code generation in Scala, and Delite is a compiler framework for embedded DSLs that simplifies the process of implementing DSLs for parallel computation and heterogeneous targets. This tutorial provides an overview of the technology stack, demonstrates use-cases where it has been successfully applied and guides the attendees step-by-step through creation of simple generators and DSLs.

## Coordinates

- June 23, 9:00-17:00. Co-located with [PLDI 2017](http://pldi2017.sigplan.org) in Barcelona.
- Organizers: [Tiark Rompf](http://tiarkrompf.github.io) (Purdue), [Kunle Olukotun](http://ogun.stanford.edu/~kunle) (Stanford), [Markus Püschel](http://www.inf.ethz.ch/personal/markusp/) (ETH)
- Presenters: Kevin Brown, [Georg Ofenbeck](https://georgofenbeck.github.io/) (ETH), Tiark Rompf, [Alen Stojanov](https://astojanov.github.io/) (ETH)


## Agenda

This tutorial will cover the following topics:

<!--[slides](https://dl.dropboxusercontent.com/u/5146003/pldi13-part1-lms.pdf), -->

- 9:00 - 10:00: Tiark Rompf, Purdue
  - Intro to LMS and runtime code generation in Scala [(notes)](http://scala-lms.github.io/tutorials/)
  - A SQL to C compiler in 500 lines of code [(notes)](https://scala-lms.github.io/tutorials/query.html)

- 10:30 - 11:20: Georg Ofenbeck, ETH
  - High performance program generators
  - Stage polymorphism for generic programming in space and time
- 11:20 - 12:10: Alen Stojanov, ETH
  - Vectorization with LMS: SIMD Intrinsics ([introductory slides](https://www.slideshare.net/astojanov/vectorization-with-lms-simd-intrinsics), [code](https://github.com/astojanov/lms-tutorial-pldi))

- 13:40 - 14:30: Kevin Brown, Stanford / Mines.io
  - Machine learning with Delite and OptiML
- 14:30 - 15:20: Kevin Brown, Stanford / Mines.io
  - Hardware generation with Spatial

- 15:50 - 17:00
  - optional deep dives, e.g. LMS for verification [(notes)](https://github.com/namin/lms-verify)

<!--
### Background on LMS
Multi-stage programming (MSP, staging for short) as established by Taha and Sheard aims to
simplify program generator development by expressing the program generator and parts of the generated code in a single program, using the same syntax. Traditional MSP languages like  MetaOCaml implement staging by providing syntactic quasi-quotation brackets to explicitly delay the evaluation of (i.e., stage) chosen program expressions. Contrary to dedicated MSP languages, LMS uses only types to distinguish the computational stages. Expressions of type Rep[T] in the first stage yield a computation of type T in the second stage. Expressions of a plain type T in the first stage will be evaluated and become constants in the generated code.
The standard Scala type system propagates information about which expressions are staged and thus performs a semi-automatic local binding-time analysis (BTA). Thus, LMS provides some of the benefits of automatic partial evaluation and of manual staging. LMS differs from earlier staging approaches in another important aspect: Instead of generating target code in one single step, LMS creates an intermediate representation of the staged code, which can be further analyzed and transformed (the LMS graph IR).

### Background on Delite
Modern computing systems are composed of increasingly parallel and heterogeneous devices and therefore new applications must be capable of targeting these devices in order to achieve high performance. Targeting these devices however is often not straightforward and requires low-level hardware-specific optimizations to maximize performance as well as utilizing multiple disparate programming models to target multiple devices. DSLs provide a solution to this problem by presenting the application developer with high level abstractions that can be transformed into efficient parallel implementations for multiple low-level programming models.  Delite is a compiler framework for building new embedded compiled DSLs that want high performance execution on heterogeneous devices. Delite is built on top of LMS and adds parallel patterns and parallel data structures. DSL authors implement domain-specific operations using Delite parallel ops, and Delite provides optimizations and code generation for multiple hardware targets. Currently supported parallel code generation includes Scala, C++, Cuda, and OpenCL.
-->
