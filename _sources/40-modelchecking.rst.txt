.. _chapter-modelchecking:

Model Checking
--------------

.. todo:: Under construction for spring 2025

For an overview, please review these resources:

- `IEEE FIE 2024 paper and presentation <https://doi.org/10.6084/m9.figshare.27226500>`_
- `Colab notebook with microwave example <https://doi.org/10.6084/m9.figshare.27122916>`

In addition, various TLA+ examples are available here:

- https://github.com/lucformalmethodscourse
- https://github.com/tlaplus/Examples



Exercises
^^^^^^^^^

.. proof:exercise:: Group Activity: River Crossing

    Learning Objectives
        An understanding of

        - event-driven systems
        - state diagrams
        - modeling event-driven systems with TLA+

    Description
        The goal is to model a river crossing puzzle as an event-driven system using TLA+.

        You may work on the `wolf, goat, and cabbage puzzle <https://en.wikipedia.org/wiki/Wolf,_goat_and_cabbage_problem>`_, or another puzzle from `this page <https://en.wikipedia.org/wiki/River_crossing_puzzle>`_, or you can suggest some other, similar puzzle.

    Submission
        Each individual student who participated in the activity should submit a screenshot of their work completed by the end of the session.


.. proof:exercise:: Group Activity: Bounded Buffer

    Learning Objectives
        An understanding of

        - concurrent systems
        - bounded buffers with multiple producers and consumers (MPMC)

    Description
        The goal is to model a system with a single, shared bounded buffer and multiple producers and consumers.

        - The producers are workstations submitting print jobs to the shared print queue (buffer).
        - The consumers are printers removing print jobs from the shared print queue.
        - The shared print queue is a fixed-size, circular, array-based buffer as described in this lab.

        For now, we'll hard-code the number of instances of producers and consumers, respectively.

        We will also define the number of jobs each workstation submits to range over various values so that we'll get many combinations. 

        Finally, we'll define suitable temporal properties, e.g.

        - termination: the print queue should eventually be empty
        - eventual consistency: at the end, the total job count should be equal to the sum of the initial number of jobs each workstation was going to submit

    Submission
        Each individual student who participated in the activity should submit a screenshot of their work completed by the end of the session.
