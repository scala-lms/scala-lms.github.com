# requires the following directories side-by-side:
#
#   scalocco                  https://github.com/scala-lms/scalocco
#   tutorials-clean           https://github.com/scala-lms/tutorials (branch lms-clean)
#   scala-lms.github.com      this repo
#

DIR=`(cd ..; pwd)`
ARGS="$DIR/tutorials-clean/src/test/scala/lms/tutorial/ $DIR/scala-lms.github.com/tutorials-clean/ $DIR/scala-lms.github.com/_layouts/code.html"

(cd ../scalocco/; sbt "run $ARGS")
