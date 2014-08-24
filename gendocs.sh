# requires the following directories side-by-side:
#
#   scalocco                  https://github.com/tiarkrompf/scalocco
#   scala-lms-tutorials-new   https://github.com/scala-lms/tutorials branch markdownized
#   summer-of-lms-2014        this repo
#

DIR=`(cd ..; pwd)`
ARGS="$DIR/scala-lms-tutorials-new/src/test/scala/lms/tutorial/ $DIR/summer-of-lms-2014/tutorials/ $DIR/summer-of-lms-2014/_layouts/code.html"

(cd ../scalocco/; sbt "run $ARGS")

