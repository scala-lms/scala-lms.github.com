---
layout: default
---


Lightweight Modular Staging (LMS) is a runtime code generation
approach. The framework provides a library of core components for
building high performance code generators and embedded compilers in
Scala.

Two closely related projects are Delite, a framework for domain specific 
languages (DSLs) that generates parallel code for heterogeneous devices,
and Scala-Virtualized, a set of minimal extensions to the Scala compiler 
that make embedding DSLs more seamless.


## Turn Nice Code into Fast Code

Strip abstraction overhead from generic code.
Domain-specific optimizations.
Teaser snippets.

<!-- TODO: use grid-based css style file -->
<table style="border: 0px;"><tr><td markdown="1" style="border: 0px;">
{% highlight scala %}
  class FooBar {
    def bla
  }
{% endhighlight %}
</td><td markdown="1" style="border:0px;padding-left:50px;">
Speedup graph here.
</td></tr></table>


## Run Scala Anywhere

Heterogenenous Targets. Compiling Scala to JavaScript, SQL, CUDA, C.
Teaser snippets.

* [JavaScript](https://github.com/js-scala/js-scala)
* [SQL](http://code.google.com/p/scala-integrated-query/)


## Getting Started

Clone the [GitHub repo](http://github.com/TiarkRompf/virtualization-lms-core). It contains an extensive test suite with examples.

    git clone git://github.com/TiarkRompf/virtualization-lms-core.git

Check out the following tutorial write-ups:

* [LMS Tutorial](https://github.com/julienrf/lms-tutorial/wiki) by Julien Richard Foy
* [OptiML getting started guide](http://stanford-ppl.github.com/Delite/optiml/getting_started.html) by Arvind Sujeeth (about Delite and OptiML)
* [Understanding Rep](tutorial1.html) (work in progress)


## Background / Documentation

Most up-to-date info first:
* List of [publications](publications.html)
* Tiark's [thesis](http://lampwww.epfl.ch/~rompf/thesis_120716.pdf)
* OptiML [getting started guide](http://stanford-ppl.github.com/Delite/optiml/getting_started.html)
* [Intro to LMS](https://docs.google.com/presentation/pub?id=1-wMnoDrIBTF1qDbhXtHVxOmCE4oP2SzaDk8o-2Ef3Bo&start=false&loop=false&delayms=3000) by Julien Richard-Foy
* [Scala Virtualized wiki](https://github.com/tiarkrompf/scala-virtualized/wiki)
* [Delite Tutorial](http://cgo2012.hyperdsls.org) CGO, Spring 2012
* [Stanford CS442](http://www.stanford.edu/class/cs442/) Spring 2011


Related projects:
* [Delite](http://stanford-ppl.github.com/Delite/)
* [OptiML](http://stanford-ppl.github.com/Delite/optiml/index.html)

