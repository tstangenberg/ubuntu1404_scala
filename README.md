ubuntu1404_scala
================

Shippable CI image for Scala on Ubuntu 14.04. Available scala version is 2.11.2

## How to use
You can use this image to run scala builds on Shippable. Just update your
`shippable.yml` file and add the `build_image` directive. Here's a sample YML file to get you going:

````
language: scala

scala:
  - 2.11.2

before_script:
  - export PATH=$PATH:$SHIPPABLE_REPO_DIR

build_image: shippableimages/ubuntu1404_scala

script:
  - export SBT_OPTS="-XX:+CMSClassUnloadingEnabled -XX:PermSize=256M -XX:MaxPermSize=512M"
  - sbt clean scoverage:test
