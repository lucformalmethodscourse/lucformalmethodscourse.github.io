.. _chapter-testing:

Software Testing
----------------

Software testing is a critical process in software development, focusing on evaluating software to ensure it meets specified requirements and standards. It is instrumental in identifying defects, ensuring quality, and increasing confidence in the software's functionality and performance.

For an overview of the subject of testing, please refer to the corresponding `Wikipedia article <https://en.wikipedia.org/wiki/Software_testing>`_.


Purpose
^^^^^^^

The primary purposes of software testing are:

Gaining Information About Quality
  Assessing the software's quality by identifying defects, ensuring it behaves as expected, and meets user needs and requirements.

Increasing Confidence in Correctness
  Verifying that the software performs its intended functions correctly, thereby building confidence among the stakeholders, including developers, clients, and users.


Focus on Correctness
^^^^^^^^^^^^^^^^^^^^

Software testing focuses on verifying the correctness of the software in relation to:

Functional Requirements

   - Testing whether the software performs its intended functions.
   - Includes unit testing, integration testing, system testing, and acceptance testing.

Dynamic Nonfunctional Requirements

   - Assessing aspects like performance, scalability, reliability, and more.
   - Involves performance testing, stress testing, load testing, reliability testing, and more.


Significance
^^^^^^^^^^^^

Software testing is vital because it:

- Identifies defects early in the development cycle, reducing the cost of bug fixes.
- Ensures that the software meets the business and technical requirements that guided its design and development.
- Provides assurance to the stakeholders that the software is reliable, secure, and high-performing.


Limitations of Software Testing
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Software testing, while crucial, has certain inherent limitations. These constraints impact the extent to which testing can assure software quality and correctness.


Testing is Not Usually Exhaustive
   Testing typically cannot cover every possible scenario or input combination, making it not equivalent to a formal proof of correctness. This limitation means that even after extensive testing, there might still be undetected defects.

Manual Testing is Tedious and Not Easily Replicable
   Manual testing requires significant effort and time, and it is prone to human error. Due to its tedious nature, it can be challenging to replicate precisely, leading to inconsistencies in test results.

Testing is Relative to the Correctness of Specification
   The effectiveness of testing is contingent on the accuracy and completeness of the software specifications. If these specifications are incorrect or incomplete, testing based on them can miss critical defects. Thus, the correctness of the software is only as reliable as the specifications against which it is tested.

These limitations underscore the need for a comprehensive approach to software quality assurance, combining rigorous testing with other methods like code reviews, static analysis, and formal verification techniques.


Alternatives to Testing
^^^^^^^^^^^^^^^^^^^^^^^
These are some alternatives and complementary approaches to software testing:

Transformational programming
  Automatically derive correct executable program from specification

Static analysis
  Formally proves the correctness of a system based on its source code.

Model checking
  Assumes both the system and its specification are represented formally.
  The system is typically represented as a finite-state machine or other state-transition system.
  Model checking exhaustively verifies correctness w.r.t. a specification based on, e.g., temporal logic.
  This aproach is widely used in embedded systems.

  Examples of model checking tools: SPIN, TLA+, etc. (see also `this Wikipedia article <https://en.wikipedia.org/wiki/List_of_model_checking_tools>`_ on model checking tools)

  The effectiveness of model checking is still relative to the correctness of the given specification.


Testing Types and Techniques
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Manual Testing
  Performed by human testers who interact with the software to find defects.

Automated Testing
  Uses tools and scripts to automatically execute tests and compare actual outcomes with expected results.

Black-Box Testing
  Focuses on input and output without considering internal code structure.

White-Box Testing
  Involves testing internal structures or workings of an application, as opposed to its functionality (i.e., looking inside the 'box').


Levels of Testing
^^^^^^^^^^^^^^^^^

Testing is a vast software engineering topic, encompassing various levels:

- unit testing
- integration testing
- system testing
- acceptance testing

These levels are orthogonal to the various testing types, techniques, and tactics. 


Unit Testing Techniques
^^^^^^^^^^^^^^^^^^^^^^^

The main value proposition of `automated unit testing <https://en.wikipedia.org/wiki/Test-driven_development>`_ is that it encourages frequent regression testing by making it painless.
During the last two decades, this “test-infected” mindset has gradually entered the mainstream including introductory computer science courses.


Unit Test Outcomes
""""""""""""""""""

The following unit test outcomes are usually possible for any given test:

- The test passes, usually indicated as a green checkmark.
- An assertion in the test fails, usually indicated as a yellow exclamation mark.
- There is a runtime error before reaching any assertions, usually indicated as a red "x".
- The test times out or does not terminate at all.
- The testing tool or entire system crashes; these outcomes are uncommon in today's managed code environments.


At the unit testing level, the following techniques are of particular interest:


Ad-hoc testing
""""""""""""""

Also called example-based testing, where we provide one or more specific test cases, where we programmatically interact with the system under test (SUT) and then examine the result or effect of the interaction.

.. code-block:: scala

    assert(isPalindrome("radar"))
    assert(!isPalindrome("lidar"))


Table-Based Testing (also known as data-driven testing)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""

Here, we provide a table of two or more columns corresponding to arguments and expected results of the function or method under test. This technique allows for a more concise representation of several similar ad-hoc tests.

.. code-block:: scala

    val palindromeTable =
      "string" | "result" |
      "a"      ! true |
      "aa"     ! true |
      "ab"     ! false |
      "mom"    ! true |
      "dad"    ! true |
      "kid"    ! false |
      "abba"   ! true |
      "appl"   ! false |
      "uncle"  ! false |
      "radar"  ! true |
      "lidar"  ! false |
      "hannah" | true

    palindromeTable |> (
      (s, r) => assert(isPalindrome(s) == r)
    )


Property-Based Testing
""""""""""""""""""""""

Here, we express the relationship between arguments and expected results as a universally quantified property. 

.. math::

    \forall \texttt{s} \in \text{String} : \texttt{isPalindrome(s)} \Leftrightarrow (\texttt{s} = \texttt{s.reverse})

Using a suitable propert-based testing library, such as `jqwik <https://jqwik.net>`_, we can express this property as executable code.
Typically, such a library automatically generates a large number of argument values and then evaluates the property for each argument as a separate test. 

.. code-block:: java

    @Property
    boolean isPalindromeWorks(@ForAll final String s) {
      return isPalindrome(s) == new StringBuilder(s).reverse().toString().equals(s);
    }


Stateless Testing
"""""""""""""""""

Orthogonal to the techniques discussed so far, stateless testing refers to the simple case where the function or method-under-test (MUT) is *stateless*, i.e., its result depends solely on its arguments and, possibly, the instance variables of an *immutable* object.
Accordingly, stateless tests are typically simple and consist of these steps:

- If we are testing a method, create an instance of the class providing the MUT. 
- Invoke the method. 
- Express assertions on the result.


Stateful Testing
""""""""""""""""

In contrast to stateless testing, this refers to cases where we the system-under-test (SUT) is a stateful object and we want to test the correctness of the SUT in response to both *observer* and *mutator* methods.
The challenge is that the space of possible interactions with a stateful object can blow up quickly if we want to test thoroughly.

For example, this test represents only one possible scenario involving the stateful `offer` and `poll` methods of a bounded buffer.

.. code-block:: java

    @Test
    void testOffer2ThenPoll2() {
      final var value1 = "hello";
      final var value2 = "world";
      assertTrue(fixture.offer(value1));
      assertTrue(fixture.offer(value2));
      assertEquals(value1, fixture.poll());
      assertEquals(value2, fixture.poll());
      assertTrue(fixture.isEmpty());
    }

Some testing libraries, however, support property-based stateful testing that exercise arbitrary scenarios involving the desired methods. 

Using the `jqwik` library, assuming the action classes for invoking specific methods are defined separately, the following code will generate and exercise a large number of interactions involving the `offer` and `poll` methods.

.. code-block:: java

    @Provide
    Arbitrary<ActionChain<SimpleQueue<String>>> simpleQueueActions() {
      return ActionChain
        .<SimpleQueue<String>>startWith(() -> new FixedArrayQueue<String>(5))
        .withAction(new OfferAction())
        .withAction(new PollAction());
    }

    @Property
    void checkSimpleQueue(@ForAll("simpleQueueActions") final ActionChain<SimpleQueue<String>> chain) {
      chain.run();
    }


Frameworks and Tools
^^^^^^^^^^^^^^^^^^^^

Various frameworks and tools have arisen to make automated testing easier and more effective.

- Frameworks: “XUnit” and similar frameworks for a variety of languages
- Mocking
- Testing patterns
- Tools for GUI test automation, e.g. Selenium, Espresso
- Build and dependency management tools
- Continuous integration/deployment/delivery pipelines

These topics are typically covered in the `COMP 370/470: Software Quality, Metrics, and Testing <https://academics.cs.luc.edu/courses/comp370.html>`_ course


Code Coverage for Structure-Based Testing
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Code coverage is a way to measure how thoroughly we are testing.
With the help of an appropriate tool, such as JaCoCo or scoverage, we can generate coverage metrics during the build process.

Specific coverage metrics in ascending order of rigor include

- Module/class coverage
- Function/method coverage
- Statement coverage
- Edge coverage
- Branch coverage
- Condition/predicate coverage
- Path coverage


Code Examples
^^^^^^^^^^^^^

`arrayqueue-java-sbt <https://github.com/lucformalmethodscourse/arrayqueue-java-sbt>`_

  - switch to `java.util.Queue <https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/util/Queue.html>`_ (?)
  - start with specification-based testing
  - then add property-based testing

`consoleapp-java <https://github.com/lucproglangcourse/consoleapp-java>`_

  - testability requires modularity
  - modularity complicates scalability
  - start with specification-based testing
  - discuss branch coverage issue
  - then add property-based testing


Limitations of Testing (Revisited)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Let's consider this example from `Hillel Wayne's blog <https://www.hillelwayne.com/post/lpl/>`_.

.. code-block:: typescript

  def add(x: int, y: int): int {
    if (x == 12976 && y == 14867) {
      return x - y;
    }
    return x + y;
  }

Possible questions include:

- What is this function intended to do?
- What does it actually do?
- To what extent can testing help?
- Is there any technique related to testing that can actually help?
- Can formal methods help?


Conclusion
^^^^^^^^^^

In conclusion, software testing is an integral part of the software development lifecycle. It not only ensures that the software is free from defects but also meets the functional and dynamic nonfunctional requirements, thereby increasing overall confidence in the software.


Further Reading
^^^^^^^^^^^^^^^

We have covered various aspects of testing in other works, including

- `Managing Concurrency in Mobile User Interfaces with Examples in Android <https://arxiv.org/abs/1705.02899>`_
- `Tests as Maintainable Assets via Auto-Generated Spies: A Case Study Involving the Scala Collections Library's Iterator Trait <https://ecommons.luc.edu/cs_facpubs/230/>`_
