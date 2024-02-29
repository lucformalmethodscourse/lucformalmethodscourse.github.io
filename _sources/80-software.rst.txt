.. _appendix-software:

Appendix: Course Software
-------------------------


.. todo:: Under construction for spring 2024!


You can choose either or both of the following options.


Cloud-based development environment
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This option is recommended if you have any problems with your local setup or if you prefer a basic cloud-based setup.


Pros
""""

- consistent, cloud-based environment
- out-of-the-box integration with GitHub


Cons
""""

- requires good network connection
- might lack some code completion features
- free plan might be underresourced (CPUs, RAM, disk space, etc.)


Gitpod (recommended)
""""""""""""""""""""

Gitpod is a cloud-based development environment based on Visual Studio Code running on Ubuntu LTS.

To launch, visit `gitpod.io <https://gitpod.io>`_ and log in using your GitHub account.

- The first time around, create a new workspace and paste the URL of the GitHub project you want to work on in the new workspace; you can also select a project from the dropdown menu.
- After that, your GitHub landing page will show your workspace(s); inactive workspaces are deleted after a certain amount of time.
- For each new workspace, using the installed `SDKMAN! <https://sdkman.io>`_, perform a one-time installation of java and `sbt <https://www.scala-sbt.org/1.x/docs/Installing-sbt-on-Linux.html>`_; 
- In case your workspace no longer recognizes the `sbt` command, reinstall via the command

  .. code-block:: console

    sdk install sbt

- Install the VS Code extensions listed below.
- Now you should be able to work on the project by following the instructions in the readme.


Locally installed development environment
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This option will give you an advanced development environment with code completion, type info, etc.


Pros
""""

- provides powerful capabilities, including code completion
- does not require network connection once installed


Cons
""""

- might be slow on older machines
- need to maintain on each machine you use
- it can be challenging to match the versions of the various packages
- GitHub account access might be tedious to configure
- possible difficulty managing coexisting Java versions


Required packages
"""""""""""""""""

- `Java 17 LTS recommended <http://www.oracle.com/technetwork/java/javase/downloads/>`_ (newer versions might have compatibility issues with certain sbt plugins)
- `Git <http://git-scm.com/>`_ distributed version control system (usually preinstalled on Mac OS and Linux)

  - recommended installation option on Windows: *Use Git and optional Unix tools from the Windows Command Prompt*
  - optional on any platform, especially when not an IDE: `some GUI-based Git client <https://git-scm.com/downloads/guis>`_

- `sbt <https://www.scala-sbt.org/1.x/docs/Setup.html>`_ Scala build tool
- *Mac and Linux users are strongly encouraged to use* `SDKMAN! <https://sdkman.io/>`_ *to manage their Java, sbt, VisualVM, and other command-line development tools.*


Choices of local development environments
"""""""""""""""""""""""""""""""""""""""""

- `Visual Studio Code <https://code.visualstudio.com/>`_ (recommended for PlusCal/TLA+ development, supports Java development)

  - need to install the actively developed `TLA+ extension <https://github.com/tlaplus/vscode-tlaplus>`_
  - if you see false syntax errors in your Java source editor in an sbt project, try disabling the "Extension pack for Java" and related extensions for your current workspace
  - if you're not seeing arrows in the source file for running the tests, try importing the build in Metals (big "M" near the bottom of the leftmost column)
  - see below for recommended VS Code extensions

- `IntelliJ IDEA CE <https://www.jetbrains.com/idea/download/>`_ integrated development environment (alternative for Java development)

  - has an unofficial TLA+ plugin
  - check specific prerequisites for your platform
  - for the following steps, make sure you have no projects open and are looking at the welcome window as in the attached screenshot
  - *JDK configuration*: IntelliJ IDEA > Configure > Project Defaults > Project Structure > Platform Settings > SDKs > + > JDK > navigate to the installation directory of your Java 17 JDK > OK
  
- conventional text editor (OK for general development but not recommended for working with PlusCal/TLA+, though one can use them with the standalone `TLA Toolbox <http://lamport.azurewebsites.net/tla/tla.html>`_)

  - Emacs
  - vim
  - etc.


Recommended Visual Studio Code extensions and settings
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Install via the extensions tool in the VS Code toolbar:

- Scala/Metals - required for sbt-based Java projects
- You should also disable the official Microsoft or Red Hat Java extensions while working on sbt-based Java projects
- `TLA+ Nightly <https://github.com/tlaplus/vscode-tlaplus>`_ - required for model development and checking 
- Conceal - recommended for nicer rendering of mathematical symbols in TLA+ (see `here <https://github.com/tonsky/FiraCode/wiki/VS-Code-Instructions>`_ and `here <https://github.com/coq-community/vsc-conceal>`_ for instructions)

When running VS Code locally, autosave isn't on by default, and you need to save your files manually: When there is a solid circle on the file's tab, it's not saved yet. 
I strongly recommend turning on autosave so your local instance of VS Code works the same way as browser-based instances:

- click the cogwheel in the bottom left corner to open settings
- type "autosave" in the search box
- look for the actual setting and choose onFocusChange

  .. image:: images/autosave.png
     :alt: Autosave setting in VS Code
     :align: center


GitHub
^^^^^^

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
^^^^^^^^^^^^^^^^^^^^

This software allows you to participating in class remotely in case of weather emergencies, pandemics, etc.
For security and privacy reasons, be sure to update it frequently.

- `Zoom <https://luc.zoom.us>`_

In case of a Zoom outage, we will fall back to MS Teams chat and reorganize from there.
