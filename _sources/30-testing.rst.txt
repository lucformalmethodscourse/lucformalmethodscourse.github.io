.. _chapter-testing:

Software Testing
----------------

.. todo:: Under construction for fall 2024

Testing is a vast software engineering topic, encompassing various levels---primarily unit testing, integration testing, system testing, and acceptance testing---along with many testing types, techniques, and tactics. For an overview of the subject of testing, please refer to the corresponding `Wikipedia article <https://en.wikipedia.org/wiki/Software_testing>`_.

The main value proposition of `automated unit testing <https://en.wikipedia.org/wiki/Test-driven_development>`_ is that it encourages frequent regression testing by making it painless.
During the last two decades, this “test-infected” mindset has gradually entered the mainstream including introductory computer science courses.
We argue that it can benefit and integrate seamlessly with HPC education.

At the unit testing level, the following techniques are of particular interest:

Ad-hoc testing
    Also called example-based testing, where we provide one or more specific test cases, where we programmatically interact with the system under test (SUT) and then examine the result or effect of the interaction.

    .. code-block:: scala

        assert(isPalindrome("radar"))
        assert(!isPalindrome("lidar"))


Table-based testing
    Here, we provide a table of two or more columns corresponding to arguments and expected results of the function or method under test. This technique allows for a more concise representation of several similar ad-hoc tests.

    .. code-block:: scala

        val palindromeTable =
          "string" | "result" |
          "mom" ! true |
          "dad" ! false |
          "radar" ! true |
          "lidar" ! false

        palindromeTable |> (
          (s, r) => assert(isPalindrome(s) == r)
        )


Property-based testing
    Here, we express the relationship between arguments and expected results as a universally quantified property. Typically, a property-based testing library automatically generates a certain number of argument and result values based on the property and executes each corresponding test.

    .. math::

        \forall \texttt{s} \in \text{String} : \texttt{isPalindrome(s)} \Leftrightarrow (\texttt{s} = \texttt{s.reverse})


Further Reading
^^^^^^^^^^^^^^^

We have covered various aspects of testing in other works, including

- `Managing Concurrency in Mobile User Interfaces with Examples in Android <https://arxiv.org/abs/1705.02899>`_
- `Tests as Maintainable Assets via Auto-Generated Spies: A Case Study Involving the Scala Collections Library's Iterator Trait <https://ecommons.luc.edu/cs_facpubs/230/>`_
