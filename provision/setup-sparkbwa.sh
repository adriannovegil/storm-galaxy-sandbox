#!/bin/bash

function getSparkBWASourceCode {
	echo "get the SparkBWA source code"
	git clone https://github.com/citiususc/SparkBWA
}

function buildTheProject {
	echo "build the project"
  pushd SparkBWA
	mvn package
  popd
}

echo "setup SparkBWA"

getSparkBWASourceCode
buildTheProject

echo "SparkBWA setup complete"
