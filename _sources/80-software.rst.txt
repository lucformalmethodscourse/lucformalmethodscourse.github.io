.. _appendix-software:

Appendix: Course Software
-------------------------



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
- lack of integration with external GUI-based tools


GitHub Codespaces (recommended)
"""""""""""""""""""""""""""""""

GitHub Codespaces is a cloud-based, containerized development environment based on Visual Studio Code running on Ubuntu LTS and closely integrated with GitHub.

To use Codespaces, 

- log into using your GitHub account and navigate to the desired repository
- look for the blue "code" button and open the drop-down menu
- select the Codespaces tab
- create a new Codespace for this repo or open an existing one already linked to this repo

For more information, please refer to `this reference <https://docs.github.com/en/codespaces>`_.


Locally installed development environment
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This option will give you an advanced development environment with code completion, type info, etc.


Pros
""""

- provides powerful capabilities, including code completion and refactoring
- does not require network connection once installed


Cons
""""

- might be slow on older machines
- need to maintain on each machine you use, but can use *settings sync* to keep settings and extensions consistent
- it can be challenging to match the versions of the various packages
- GitHub account access might be tedious to configure
- possible difficulty managing coexisting Java versions


Required packages
"""""""""""""""""

- `Java 21 LTS recommended <https://www.oracle.com/java/technologies/downloads/#java21>`_
- `Git <http://git-scm.com/>`_ distributed version control system (usually preinstalled on Mac OS and Linux)

  - recommended installation option on Windows: *Use Git and optional Unix tools from the Windows Command Prompt*
  - optional on any platform, especially when not an IDE: `some GUI-based Git client <https://git-scm.com/downloads/guis>`_

- `Maven <https://maven.apache.org/>`_ build and dependency management tool for the Java ecosystem
- *Mac and Linux users are strongly encouraged to use* `SDKMAN! <https://sdkman.io/>`_ *to manage their Java, Maven, VisualVM, and other command-line development tools.*


Choices of local development environments
"""""""""""""""""""""""""""""""""""""""""

- `Visual Studio Code <https://code.visualstudio.com/>`_ (recommended for PlusCal/TLA+ development, supports Java development)

  - need to install the actively developed `TLA+ extension <https://github.com/tlaplus/vscode-tlaplus>`_
  - see below for recommended VS Code extensions

- `IntelliJ IDEA CE <https://www.jetbrains.com/idea/download/>`_ integrated development environment (alternative for Java development)

  - has unofficial Alloy and TLA+ plugins
  - check specific prerequisites for your platform
  - for the following steps, make sure you have no projects open and are looking at the welcome window as in the attached screenshot
  - *JDK configuration*: IntelliJ IDEA > Configure > Project Defaults > Project Structure > Platform Settings > SDKs > + > JDK > navigate to the installation directory of your Java 21 JDK > OK
  
- conventional text editor (OK for general development but not recommended for working with Alloy or PlusCal/TLA+, though one can use them with the standalone `TLA Toolbox <http://lamport.azurewebsites.net/tla/tla.html>`_)

  - Emacs
  - vim
  - etc.


Recommended Visual Studio Code extensions and settings
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

For consistency across VS Code installations, including Codespaces, enable settings sync using your GitHub or Microsoft/LUC account.

Install via the extensions tool in the VS Code toolbar:

- Live Preview
- Live Share
- Extension Pack for Java
- Alloy
- Alloy VSCode
- TLA+
- Conceal, recommended for nicer rendering of mathematical symbols in TLA+ (see `here <https://github.com/tonsky/FiraCode/wiki/VS-Code-Instructions>`_ and `here <https://github.com/coq-community/vsc-conceal>`_ for instructions)

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
- For credit toward class participation, create some meaningful `GitHub issues <https://guides.github.com/features/issues>`_ and/or `GitHub pull requests <https://help.github.com/articles/using-pull-requests>`_ for one or more of our `course examples <https://github.com/lucformalmethodscourse>`_. (Make sure to navigate to the original repos as these forks do not have their own issue trackers). These can be functional or nonfunctional enhancements, requests for clarification, etc.
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
