.. _appendix-software:

Appendix: Course Software
-------------------------

You can choose either or both of the following options.


Cloud-based development environment
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This option is recommended if you have any problems with your local setup or if you prefer a basic cloud-based setup.


Pros
````

- consistent, cloud-based environment


Cons
````

- requires good network connection
- might lack code completion
- free plan might be underresourced (CPUs, RAM, disk space, etc.)


Gitpod (recommended)
````````````````````

Gitpod is a cloud-based development environment based on Visual Studio
Code running on Ubuntu LTS.

To launch, visit https://gitpod.io and log in using your GitHub
account.

- The first time around, create a new workspace and select the GitHub
  project you want to work on in the new workspace.
- After that, your GitHub landing page will show your workspace(s).
- For each new workspace, using the installed `SDKMAN!
  <https://sdkman.io>`_, perform a one-time installation of java and `sbt
  <https://www.scala-sbt.org/1.x/docs/Installing-sbt-on-Linux.html>`_.
- Now you should be able to work on the project by following the
  instructions in the readme.


Locally installed development environment
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This option will give you an advanced development environment with code completion, type info, etc.


Pros
````

- provides powerful capabilities, including code completion
- does not require network connection once installed


Cons
````

- might be slow on older machines
- need to maintain on each machine you use
- it can be challenging to match the versions of the various packages


Required packages
`````````````````

- `Java 17 and/or newer JDK <http://www.oracle.com/technetwork/java/javase/downloads/>`_
- `Git <http://git-scm.com/>`_ distributed version control system (usually preinstalled on Mac OS and Linux)

  - recommended installation option on Windows: *Use Git and optional Unix tools from the Windows Command Prompt*
  - optional on any plaDecimaltform, especially when not using IntelliJ IDEA: `some GUI-based Git client <https://git-scm.com/downloads/guis>`_


- `sbt <https://www.scala-sbt.org/1.x/docs/Setup.html>`_ Scala build tool
- *Mac and Linux users are strongly encouraged to use* `SDKMAN! <https://sdkman.io/>`_ *to manage their Java, sbt, VisualVM, and other command-line development tools.*


Choices of development environments
```````````````````````````````````

- `IntelliJ IDEA CE <https://www.jetbrains.com/idea/download/>`_ integrated development environment (recommended for Java development)

  - check specific prerequisite details for your platform
  - for the following steps, make sure you have no projects open and are looking at the welcome window as in the attached screenshot
  - *JDK configuration*: IntelliJ IDEA > Configure > Project Defaults > Project Structure > Platform Settings > SDKs > + > JDK > navigate to the installation directory of your most recent JDK > OK

- `Visual Studio Code <https://code.visualstudio.com/>`_ alternative based on your preference and/or experience (recommended for PlusCal/TLA+ development)

  - need to install `TLA+ extension <https://github.com/tlaplus/vscode-tlaplus>`_
  - alternatively, you can use the standalone `TLA Toolbox <http://lamport.azurewebsites.net/tla/tla.html>`_
  - if you see false syntax errors in your Java source editor in an sbt project, try disabling the "Extension pack for Java" and related extensions for your current workspace
  - if you're not seeing arrows in the source file for running the tests, try importing the build in Metals (big "M" near the bottom of the leftmost column)

- conventional text editor (OK for general development but not recommended for working with PlusCal/TLA+)

  - Emacs
  - vim
  - etc.


GitHub
~~~~~~

`GitHub <https://github.com>`_ is a provider of hosted Git repositories, which emphasizes community and collaboration. For this reason, we use it to host our course examples.

- Create a GitHub account if you don't already have one.
- Get the `GitHub Student Developer Pack <https://education.github.com/pack/join>`_ using your official ``@luc.edu`` address. This will give you free unlimited private repositories.
- Find and follow a few practitioners you respect. For example, I follow `these developers <https://github.com/klaeufer/following>`_. You'll probably recognize a number of them.
- Review `these notes <https://guides.github.com/activities/contributing-to-open-source>`_ to understand the community-based development process.
- For credit toward class participation, create some meaningful `GitHub issues <https://guides.github.com/features/issues>`_ and/or `GitHub pull requests <https://help.github.com/articles/using-pull-requests>`_ for one or more of our `course examples <https://github.com/lucproglangcourse>`_. (Make sure to navigate to the original repos as these forks do not have their own issue trackers). These can be functional or nonfunctional enhancements, requests for clarification, etc.
- To enhance your visibility in the professional community, start doing the same for some open-source projects you are interested in.

You may find both of these cheat sheets useful:

- `GitHub <https://education.github.com/git-cheat-sheet-education.pdf>`_
- `GitLab <https://about.gitlab.com/images/press/git-cheat-sheet.pdf>`_ (includes useful diagrams)


Remote participation
~~~~~~~~~~~~~~~~~~~~

This software allows you to participating in class remotely in case of weather emergencies, pandemics, etc.
For security and privacy reasons, be sure to update it frequently.

- `Zoom <https://luc.zoom.us>`_

In case of a Zoom outage, we will fall back to MS Teams chat and reorganize from there.
