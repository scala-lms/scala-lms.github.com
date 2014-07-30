---
layout: landing
title: The LMS Platform
tagline: Generative Programming and Embedded Compilers in Scala
---
Lightweight Modular Staging (LMS) is a runtime code generation
approach. The framework provides a library of core components for
building high performance code generators and embedded compilers in
Scala.

Two closely related projects are [Delite](http://stanford-ppl.github.com/Delite/), 
a framework for domain specific languages (DSLs) that generates parallel 
code for heterogeneous devices, and [Scala Virtualized](https://github.com/tiarkrompf/scala-virtualized/wiki), 
a set of minimal extensions to the Scala compiler that make embedding 
DSLs more seamless.

## News Flash

We're been holding tutorials on LMS and Delite at major conferences:

- [CUFP 2014](http://cufp.org/2014/): Gothenburg, September 5. More info: 
  [cufp.org/2014](http://cufp.org/2014/t11-tiark-rompf-batteries-included-generative-programming-with-scala-and-lms.html) 
- [SPLASH 2014](http://2014.splashcon.org): Portland, October 22. More info: 
  [2014.splashcon.org](http://2014.splashcon.org/track/splash2014-tutorials) 
- [PLDI 2013](http://pldi2013.ucombinator.org): Seattle, June 16. More info: 
  [scala-lms.github.io/pldi2013](pldi2013/index.html) 
- [ECOOP 2013](http://www.lirmm.fr/ecoop13/): Montpellier, July 3-5. More info: 
  [scala-lms.github.io/ecoop2013](ecoop2013/index.html)

Slides and additional materials are available from the links above.

## Abstraction Without Regret

Turn nice high-level programs into fast low-level code. Strip abstraction overhead from generic programs. Add domain-specific optimizations.

{% highlight scala %}
class Vector[T:Numeric:Manifest](val data: Rep[Array[T]]) {
  def foreach(f: Rep[T] => Rep[Unit]): Rep[Unit] =
    for (i <- 0 until data.length) f(data(i))
  def sumIf(f: Rep[T] => Rep[Unit]) = { 
    var n = zero[T]; foreach(x => if (f(x) n += x)); n }
}

val v: Vector[Double] = ...
println(v.sumIf(_ > 0))
{% endhighlight %}

<!-- TODO: use grid-based css style file -->

<div class="row">
<div class="col-xs-6" markdown="1">
{% highlight scala %}
var n: Double = 0.0
var i: Int = 0
val end = data.length
while (i < end) {
  val x = data(i)
  val c = x > 0
  if (c) n += x
}
println(n)
{% endhighlight %}

</div>
<div class="col-xs-6" markdown="1">

Running the snippet above will generate the program on the left: All functions are inlined, 
all generics specialized, all type class instances removed.
All of this is guaranteed by the type system: Expressions of type `Rep[T]` become
part of the generated program, everything else is evaluated when the original
snippet is run. 

</div>
</div>

Actually this is only half of the story: The output on the left is not produced
directly, but going through an extensible intermediate representation (IR) that
can be further transformed and optimized.
[Read more...](#docs)


## Run Scala Anywhere

Generate code for heterogenenous targets. Compile Scala to JavaScript, SQL, CUDA, C...

* CUDA, OpenCL, C: [Delite](http://stanford-ppl.github.com/Delite/)
* JavaScript: [JS-SCALA](https://github.com/js-scala/js-scala)
* SQL: [SIQ](http://code.google.com/p/scala-integrated-query/)
* VHDL (work in progress)


## Getting Started {#docs}

Clone the [GitHub repo](http://github.com/TiarkRompf/virtualization-lms-core). It contains an extensive test suite with examples.

    git clone git://github.com/TiarkRompf/virtualization-lms-core.git

Be sure to check out the [docs](tutorials/index.html)!

