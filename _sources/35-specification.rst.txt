.. _chapter-specification:

Formal Specification
--------------------

In this chapter, we discuss formal specification of software systems.
We will use Alloy, a lightweight modeling language based on relational logic, to express our specifications.
We focus on modeling data structures, defining constraints, specifying operations, and reasoning about system behavior using Alloy's built-in analysis tools.


.. note:: This chapter is in its initial stages for spring 2026 and subject to ongoing revisions!


More details, including additional examples, are available in the book `Formal Software Design with Alloy 6 <https://haslab.github.io/formal-software-design>`_.


Introduction to Alloy
^^^^^^^^^^^^^^^^^^^^^

Alloy is a declarative language for specifying structural properties of systems. It is built on first-order relational logic and provides an automatic analysis engine, the Alloy Analyzer, to explore instances and verify properties.

These are Alloy's key features:

- Uses *signatures* (``sig``) to define entities and their relationships.
- Defines *constraints* using *facts*, *predicates*, and *assertions*.
- Allows *instance exploration* and *counterexample generation*.
- Supports *temporal reasoning* with basic transition modeling.

Alloy 6 extends earlier versions with improved support for expressing operations and transitions. 


Modeling Data Structures in Alloy: A Simple Queue
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


We begin by modeling a *bounded queue* to illustrate formal specification concepts using Alloy as a notation.
A queue holds elements in a *first-in, first-out (FIFO) order*. We define a basic queue structure:

.. code-block:: alloy

    module Queue
    
    sig Element {}
    
    sig Queue {
        elements: seq Element
    }

Here, ``Element`` is a basic type representing items in the queue. The ``Queue`` signature has a relation ``elements`` using a **sequence** (``seq``), which ensures order.


Basic Constraints
^^^^^^^^^^^^^^^^^

We now define a *fact* to limit the queue’s size:

.. code-block:: alloy

    fact BoundedSize {
        all q: Queue | #q.elements <= 5
    }

This constraint ensures no queue contains more than five elements.


Exploring Instances
^^^^^^^^^^^^^^^^^^^

We can generate sample instances using the Alloy Analyzer:

.. code-block:: alloy

    run {} for 3 Queue, 5 Element

This command searches for valid queue instances under the given bounds.


Modeling operations: Enqueue and Dequeue
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

We now add operations to manipulate the queue.
In Alloy, we define these using *predicates*:

.. code-block:: alloy

    pred enqueue[q: Queue, e: Element] {
        #q.elements < 5
        q.elements' = q.elements + e
    }

    pred dequeue[q: Queue, e: Element] {
        some q.elements
        e = first q.elements
        q.elements' = rest q.elements
    }

Here, ``enqueue`` adds an element (if space allows), and ``dequeue`` removes the first element.


Checking Properties
^^^^^^^^^^^^^^^^^^^

We verify queue behavior using *assertions*:

.. code-block:: alloy

    assert FIFO {
        all q: Queue, e1, e2: Element |
            enqueue[q, e1] and enqueue[q, e2] implies
            dequeue[q, e1]
    }
    
    check FIFO for 5 Queue, 5 Element

If a counterexample exists, Alloy will generate one.


Basic Behavioral Specification
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

We now model *state transitions* in Alloy.
We start with a state-based view of the queue:

.. code-block:: alloy

    sig State {
        queues: Queue
    }
    
    pred step[s, s': State] {
        some q: Queue |
            enqueue[q, some Element] or dequeue[q, some Element]
    }


Temporal Properties
^^^^^^^^^^^^^^^^^^^

We check sequences of operations:

.. code-block:: alloy

    pred always_not_empty {
        all s: State | some s.queues.elements
    }
    
    check always_not_empty

This verifies that the queue is never empty across all states.


Conclusion
^^^^^^^^^^

This chapter introduced Alloy 6 for modeling data structures, specifying operations, and verifying behaviors using constraints and assertions. The next topic extends these concepts to *temporal logic and model checking*.
