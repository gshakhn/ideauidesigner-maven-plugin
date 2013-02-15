#!/bin/sh

INTELLIJ_HOME=$1

if [ -z "$INTELLIJ_HOME" ]
then
  echo "Please provide the path to Intellij home directory. For example: install-intellij-libs.sh /Applications/Nika-IU-111.228.app"
  exit 1
fi

if [ ! -d "$INTELLIJ_HOME" ]
then
  echo "Directory does not exist: $INTELLIJ_HOME"
  exit 1
fi

echo 'Installing Intellij artifacts to Maven local repository'
echo "Intellij home: $INTELLIJ_HOME"

mvn install:install-file -Dfile="$INTELLIJ_HOME/lib/javac2.jar" -DgroupId=com.intellij -DartifactId=javac2 -Dversion=12.0.4 -Dpackaging=jar
mvn install:install-file -Dfile="$INTELLIJ_HOME/lib/asm4-all.jar" -DgroupId=com.intellij -DartifactId=asm4-all -Dversion=12.0.4 -Dpackaging=jar
mvn install:install-file -Dfile="$INTELLIJ_HOME/lib/forms_rt.jar" -DgroupId=com.intellij -DartifactId=forms_rt -Dversion=12.0.4 -Dpackaging=jar
