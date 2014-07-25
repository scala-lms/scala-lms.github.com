# requires the following directories side-by-side:
#
#	scalocco
#   scala-lms-tutorials-new
#   summer-of-lms-2014
#

DIR=`(cd ..; pwd)`
ARGS="$DIR/scala-lms-tutorials-new/src/test/scala/lms/tutorial/ $DIR/summer-of-lms-2014/tutorials/ $DIR/summer-of-lms-2014/_layouts/code.html"

(cd ../scalocco/; sbt "run $ARGS")

