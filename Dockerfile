FROM shippableimages/ubuntu1404_java:0.0.1

RUN FILE=`mktemp`; wget https://dl.bintray.com/sbt/debian/sbt-0.13.6.deb -qO $FILE && dpkg -i $FILE && rm $FILE
RUN FILE=`mktemp`; wget http://downloads.typesafe.com/scala/2.11.2/scala-2.11.2.deb -qO $FILE && dpkg -i $FILE && rm $FILE

CMD ["/bin/bash"]
