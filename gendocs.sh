# requires the following directories side-by-side:
#
#   scalocco                  https://github.com/tiarkrompf/scalocco
#   scala-lms-tutorials       https://github.com/scala-lms/tutorials
#   scala-lms.github.com      this repo
#

DIR=`(cd ..; pwd)`
ARGS="$DIR/scala-lms-tutorials/src/test/scala/lms/tutorial/ $DIR/scala-lms.github.com/tutorials/ $DIR/scala-lms.github.com/_layouts/code.html"

(cd ../scalocco/; sbt "run $ARGS")

