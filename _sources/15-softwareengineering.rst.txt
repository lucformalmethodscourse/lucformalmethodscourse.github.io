.. _chapter-softwareengineering:

Software Engineering Context
----------------------------

Software engineering is a systematic, disciplined, and quantifiable approach to the development, operation, and maintenance of software. It encompasses a set of methodologies, tools, and techniques for the creation of software applications and systems.

.. proof:definition:: Software engineering 
    
    *Software engineering* is defined as the application of engineering principles to the software development process. It involves the use of structured programming, rigorous testing, and documentation to ensure the development of reliable, efficient, and maintainable software.


Key Aspects
^^^^^^^^^^^

Software Development Life Cycle (SDLC)
    This includes stages such as planning, requirements analysis, design, implementation, testing, deployment, and maintenance.

Quality Assurance
    Ensuring the software meets specified requirements and standards through various testing and review methods.

Software Design and Architecture
    Creating a blueprint for the software that defines its structure, components, and their interactions.

Project Management
    Managing resources, timelines, and budgets to efficiently deliver software projects.

Maintenance and Support
    Providing ongoing support and making necessary modifications and updates to the software.


Significance
^^^^^^^^^^^^

Software engineering is crucial because it:

- Ensures the creation of reliable and high-quality software.
- Improves efficiency in software development.
- Facilitates collaboration among cross-functional teams.
- Helps in managing complex software projects effectively.

To recap, in today's technology-driven world, software engineering plays a pivotal role in the development of a wide range of applications, from small-scale systems to large enterprise solutions. Its methodologies and practices continue to evolve with the advancement of technology, making it an ever-important field in the realm of computing and software development.


Software Requirements
^^^^^^^^^^^^^^^^^^^^^

Software requirements are a critical part of system design and development. They define what a software product should do and how it should perform. There are three main types of software requirements:

- Functional Requirements
- Static Nonfunctional Requirements
- Dynamic Nonfunctional Requirements

Functional Requirements
"""""""""""""""""""""""

.. proof:definition:: Functional requirements
    
    *Functional requirements* describe the specific functions or tasks that the software must perform. These requirements are directly related to the actions and behavior of the system.

Examples:

- The system shall allow users to log in using their email and password.
- The software shall generate monthly sales reports.
- The application shall encrypt user data before storing it.

Static Nonfunctional Requirements
"""""""""""""""""""""""""""""""""

.. proof:definition:: Static nonfunctional requirements
    
    *Static nonfunctional requirements* refer to the characteristics of the system that define its quality and standards. These requirements are not about specific behaviors but rather about the system's attributes.

Examples:

- The website shall be accessible according to WCAG 2.1 standards.
- The software shall have a user interface available in English, Spanish, and French.
- The system shall comply with GDPR and other relevant data protection laws.

Dynamic Nonfunctional Requirements
""""""""""""""""""""""""""""""""""

.. proof:definition:: Dynamic nonfunctional requirements
    
    *Dynamic nonfunctional requirements* concern the performance and responsiveness of the system under certain conditions. These are about how the system behaves under various scenarios.

Examples:

- The system shall handle at least 10,000 simultaneous users.
- The response time for any query shall not exceed 2 seconds.
- The system shall have an uptime of 99.9%.


Recap
"""""

Each of these requirements plays a vital role in the success and usability of the software. Properly defining and addressing these requirements ensures a high-quality product that meets user needs and expectations.


The Software Supply Chain
^^^^^^^^^^^^^^^^^^^^^^^^^

The software supply chain encompasses all the steps and components involved in
creating, distributing, and using software. It's analogous to a physical
product's supply chain, where raw materials are transformed into finished
goods. In software, these "raw materials" are source code, libraries,
frameworks, tools, and other software components.

Key stages in the software supply chain include:

1.  Development: Writing source code, using libraries and frameworks.
2.  Building: Compiling, linking, and packaging the software.
3.  Distribution: Publishing and distributing the software (e.g., through
    package repositories).
4.  Deployment: Installing and running the software in a production
    environment.
5.  Maintenance: Updating and patching the software.

Dependency Management
"""""""""""""""""""""

Dependency management is a critical part of the supply chain.
Modern software development heavily relies on reusing existing code in the form
of libraries and frameworks (dependencies). Dependency management tools
automate the process of:

*   Declaring Dependencies: Specifying which libraries a project needs.
*   Resolving Dependencies: Finding and downloading the correct versions of
    required libraries and their own dependencies (transitive dependencies).
*   Managing Versions: Handling different versions of libraries and ensuring
    compatibility.
*   Building the Project: Integrating the dependencies into the build process.

In the Java ecosystem, build tools such as Maven, Gradle, or sbt provide dependency management:

*   ``pom.xml``: Maven uses a ``pom.xml`` (Project Object Model) file to define
    project metadata, including dependencies.
*   Repositories: Maven uses repositories (e.g., Maven Central) to store and
    distribute libraries (JAR files).
*   Dependency Declaration: Dependencies are declared using ``<dependency>``
    elements in the ``pom.xml`` file, specifying the group ID, artifact ID,
    and version.
*   Transitive Dependencies: Maven automatically resolves transitive
    dependencies (dependencies of your dependencies).
*   Version Management: Maven provides mechanisms for managing versions,
    including specifying exact versions, version ranges, and snapshot
    versions.
*   Build Lifecycle: Maven defines a build lifecycle (e.g., compile, test,
    package, install, deploy) that automates the build process, including
    dependency resolution.

Similarly, in the JavaScript ecosystem, the Node Package Manager (npm) manages dependencies:

*   ``package.json``: npm uses a ``package.json`` file to define project
    metadata, including dependencies.
*   npm Registry: npm uses the npm registry to store and distribute packages.
*   Dependency Declaration: Dependencies are declared in the ``dependencies``
    or ``devDependencies`` sections of the ``package.json`` file, specifying
    the package name and version or version range.
*   Transitive Dependencies: npm also resolves transitive dependencies.
*   Version Management: npm uses semantic versioning (semver) to manage
    versions and provides mechanisms for specifying version ranges and locking
    dependencies to specific versions.
*   ``package-lock.json`` (or ``yarn.lock``): npm (and Yarn) generate lock files
    (``package-lock.json`` or ``yarn.lock``) to ensure consistent builds across
    different environments by locking down the exact versions of all
    dependencies.

A Prominent Supply Chain Failure: leftpad
"""""""""""""""""""""""""""""""""""""""""

The 2016 `leftpad incident <https://qz.com/646467/how-one-programmer-broke-the-internet-by-deleting-a-tiny-piece-of-code>`_ illustrates the vulnerability of the software supply chain. 
(See also `this reference <https://en.wikipedia.org/wiki/Npm_left-pad_incident>`_.)

*   Dependency Removal: The removal of a small, seemingly insignificant
    package (``leftpad``) from the npm registry had a cascading effect on
    thousands of projects that depended on it (directly or indirectly).
*   Lack of Version Pinning: Many projects were not using version pinning
    (locking down the exact version of ``leftpad``), which meant they were
    relying on the latest version. When the package was removed, their builds
    broke.
*   Impact on Downstream Projects: The incident highlighted how a small issue
    in one part of the supply chain can have a significant impact on
    downstream projects.


Lessons Learned and Connections to Formal Methods
"""""""""""""""""""""""""""""""""""""""""""""""""

*   Formal Specification: A formal specification of ``leftpad``'s behavior
    could have helped prevent unexpected changes or removals.
*   Dependency Management Best Practices: The incident emphasized the
    importance of using version pinning and other dependency management best
    practices.
*   Formal Verification of Dependencies: More advanced formal methods could be
    used to verify the compatibility and correctness of dependencies.
*   Software Composition Analysis (SCA): Modern SCA tools can analyze project
    dependencies and identify potential vulnerabilities or licensing issues.


Formal Methods in Software Engineering
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Formal methods in software engineering refer to a set of techniques and tools for specifying, developing, and verifying software systems with respect to their requirements. 
These methods are based on formal mathematical principles and logic, providing a rigorous framework for software design and analysis.

.. proof:definition:: Formal methods
    
    *Formal methods* involve the use of mathematical models to represent the desired properties and behavior of a software system. These models are used to prove correctness, check for errors, and ensure that the system adheres to its specifications.


Key Features
""""""""""""

Mathematical Rigor
    Utilizing mathematical logic and discrete mathematics to model software systems.

Specification and Verification
    Developing precise and unambiguous specifications for software behavior and verifying that the software meets these specifications.

Model Checking
    Systematically examining the model of a software system to verify properties such as correctness, safety, and security.

Theorem Proving
    Using logical reasoning and algorithms to prove or disprove theorems about a software system.


Importance
""""""""""

Formal methods are particularly valuable in:

- Developing critical systems where failure can have severe consequences (e.g., aerospace, nuclear, and medical systems).
- Ensuring the reliability and security of software.
- Providing a clear and precise framework for understanding complex systems.


Challenges
""""""""""

While beneficial, formal methods can be:

- Time-consuming and require specialized expertise.
- Difficult to apply in large-scale software due to the complexity of real-world systems.
- Challenging to integrate with more traditional, less formal development processes.


Recap
"""""

Formal methods offer a high degree of assurance for software correctness and reliability. Their application is most effective in high-stakes domains where system failure is not an option. Despite their complexity and resource-intensive nature, these methods continue to be an important area of research and application in software engineering.
