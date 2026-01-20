.. _chapter-modelchecking:

Model Checking
--------------

.. todo:: Under construction for spring 2026

For an overview, please review these resources:

- `IEEE FIE 2024 paper and presentation <https://doi.org/10.6084/m9.figshare.27226500>`_
- `Colab notebook with microwave example <https://doi.org/10.6084/m9.figshare.27122916>`_

In addition, various TLA+ examples are available here:

- https://github.com/lucformalmethodscourse
- https://github.com/tlaplus/Examples


Use case: finding a solution to a puzzle
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

In these use cases, we use model checking to falsify an invariant corresponding to the absence of a solution.
If there is a solution, the model checker finds one.

Examples:

- `Jug puzzle from Die Hard 3 <https://github.com/lucformalmethodscourse/diehard-tla>`_
- `River crossing puzzles <https://github.com/lucformalmethodscourse/rivercrossing-tla>`_
- `Towers of Hanoi puzzle <https://github.com/lucformalmethodscourse/hanoisimple-tla>`_


Use case: verifying an interactive, event-based system
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

In these use cases, we use model checking to verify safety and liveness properties of event-based systems.
These systems typically respond to external and internal stimuli (events), such as pressing a button, inserting a coin, an internal timer counting down, etc.
In response to these events, the systems undergo state changes.

As an example of a safety property from the user's (consumer's) point of view, a microwave oven should not allow radiation to occur with the door open.
As an example of a liveness property, once the microwave oven is running, it should stop running within a finite amount of time.

Examples:

- `Microwave oven <https://github.com/lucformalmethodscourse/microwave-tla>`_
- `Vending machine <https://github.com/lucformalmethodscourse/vendingmachine-tla>`_

Use case: checking the thread safety of a concurrent system with explicit threads
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

In these use cases, we model threads explicitly as finite state machines based on the underlying control flow graph.

Examples:

- `Shared variable updated by multiple concurrent threads <https://github.com/lucformalmethodscourse/simpleconcurrency-tla>`_
- Data structure shared among multiple concurrent clients (TODO)

These references contain more background material on `concurrency in general <https://arxiv.org/abs/1705.02899>`_ and the `extent of nondeterminism resulting from concurrent activities in a system <https://lucproglangcourse.github.io/concurrency.html#understanding-the-extent-of-nondeterminism>`_, which can quickly become unwieldy even with a small number of concurrent threads.



Extended example: ticket vending machine
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The objective is to write and check a TLA+ specification for a ticket vending machine that sells one-way train tickets to several known destinations. 

We'll make some simplifying assumptions: All tickets to the same destination have the same fare, but the fare may vary across destinations. The machine is initially loaded with zero or more tickets for each known destination, and zero or more coins in its internal bank. 

When in operation, the machine responds to the following external actions:

- Passenger deposits a coin.

- Passenger selects a destination. If they have deposited enough coins, the corresponding ticket is delivered, the money needed to pay for it is retained by the machine, and any amount of extra money they may have deposited is returned to them (the machine gives change.) Otherwise, nothing happens.

- Passenger selects “cancel.” Any coins they have deposited so far are returned.

Your specification should allow you to use TLC to check the property that the total value of tickets still in the machine plus money in its internal bank is invariant during operation. Actually, this isn't quite true: you'll need to come up with a more precise invariant that is true.

*For simplicity, assume that tickets all cost some multiple of $1, and the machine only accepts dollar coins.*

Additional thoughts
"""""""""""""""""""

- The set of destinations and their fares should be CONSTANTS. Represent destinations as a set of model values. Represent fares as a function from destinations to Nat (you'll need to make your spec EXTEND Naturals). Hint: to describe a concrete function given by the ordered pairs {(d1, r1),(d2, r2), . . . ,(dn, rn)} as the value of a constant, use the notation ( d1 :> r1 @@ d2 :> r2 @@ . . . @@ dn :> rn ).
- The VARIABLES should include the currently available tickets (a function from destinations to Nat), the current internal bank (a Nat for each kind of coin), and the amount deposited so far (again, a Nat for each kind of coin).
- The initial values of these variables should be specified as CONSTANTS too (except for the coins deposited so far, which can be initialized to zero).
- There should be three actions; the Next action should just be a disjunction of these.
- You may find the following higher-order operator (familiar from functional languages) useful for computing the value of the tickets in the machine:

.. code-block::

    (* Operator to fold over a set s using function f and initial value i *)
    Fold(f(_,_),i,s) ==
    LET DFold [s0 \in SUBSET s] ==
        LET elt == CHOOSE e \in s0 : TRUE IN
        IF s0 = {} THEN i ELSE f(elt, DFold[s0 \{elt}])
    IN
        DFold[s]

    (* Example: compute sum of a set *)
    Sum(s) == Fold(LAMBDA e,r : e + r,0,s)

See also `this reference <https://people.cs.aau.dk/~kgl/ESV04/exercises/#Exercise_25>`_ for more ideas to consider and discuss.


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

A nice collection of model-checking exercises is available `here <https://homes.cs.aau.dk/~kgl/esv04/exercises/>`_.
