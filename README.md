Introduction
-----------

This is a git clone of https://svn.codehaus.org/mojo/trunk/mojo/ideauidesigner-maven-plugin.

I modified it to support IntelliJ 12.x since an [IntelliJ plugin] wasn't building with the official version.

All credit goes to original authors of the maven plugin.

[IntelliJ plugin]: https://github.com/gshakhn/sonar-intellij-plugin

Usage
-----

The meaningful modifications to this plugin are on the 12.x branch. Make sure to check it out before proceeding.

This plugin is dependent on IntelliJ's javac2.jar, asm4-all.jar, and forms_rt.jar. You'll need to install them into your local maven repo by running:

    ./install-intellij-libs.sh <path to IntelliJ 12.0.4>

You can then install the plugin locally by doing:

    mvn install
