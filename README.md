Introduction
-----------

This is a git clone of https://svn.codehaus.org/mojo/trunk/mojo/ideauidesigner-maven-plugin.

I modified it to support IntelliJ 14.x and Java 8.

All credit goes to original authors of the maven plugin.

Usage
-----

The meaningful modifications to this plugin are on the 14.x branch. Make sure to check it out before proceeding.

This plugin is dependent on IntelliJ's javac2.jar, asm-all.jar, and forms_rt.jar. You'll need to install them into your local maven repo by running:

    ./install-intellij-libs.sh <path to IntelliJ 14.0.3>

You can then install the plugin locally by doing:

    mvn install

