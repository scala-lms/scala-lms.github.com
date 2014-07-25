# requires the following directories side-by-side:
#
#	scalocco
#   scala-lms-tutorials-new
#   summer-of-lms-2014
#

(cd ../scalocco/; sbt "run ../scala-lms-tutorials-new/src/test/scala/lms/tutorial/ ../summer-of-lms-2014/tutorials/ ../summer-of-lms-2014/_layouts/code.html")

