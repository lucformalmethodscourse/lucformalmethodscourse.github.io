.. _chapter-logic:

Logic Foundations
-----------------

.. todo:: Under construction for fall 2024


Propositional logic
^^^^^^^^^^^^^^^^^^^

Propositional logic, also known as propositional calculus or boolean logic, is a branch of logic that deals with propositions and their combinations using logical connectives.

Key Concepts
""""""""""""

Propositions
   Propositions are statements that can be either true or false, but not both. For example, "It is raining" is a proposition.

Logical Connectives
   These are operators used to form compound propositions:

   - **Conjunction** (AND, denoted as ∧)
     The compound proposition "p ∧ q" is true only if both "p" and "q" are true.

   - **Disjunction** (OR, denoted as ∨)
     The compound proposition "p ∨ q" is true if either "p" or "q" (or both) is true.

   - **Negation** (NOT, denoted as ¬)
     The negation "¬p" is true if "p" is false.

   - **Implication** (IF-THEN, denoted as →)
     The implication "p → q" is true unless "p" is true and "q" is false.

   - **Biconditional** (IF AND ONLY IF, denoted as ↔)
     The biconditional "p ↔ q" is true if both "p" and "q" are either true or false.

Syntax and Semantics
   The syntax of propositional logic refers to the formal rules for constructing valid formulas, while semantics deals with the truth values of these formulas.

Truth Tables
   These are used to determine the truth value of propositions under all possible combinations of truth values of their components.

Tautologies and Contradictions
   A tautology is a proposition that is always true, regardless of the truth values of its components. A contradiction is always false.

Inference and Deduction
   Propositional logic allows for the derivation of conclusions from a set of premises using rules of inference.

Propositional logic is foundational in various fields, including computer science, mathematics, and philosophy, as it provides the basic structure for reasoning and decision-making processes.


Examples
""""""""

Modus Ponens is a basic form of *argument* in propositional logic. 
It follows the structure: If p implies q, and p is true, then q must also be true.
Here is an example involving Modus Ponens:

**Propositions**:

- **p**: "It is sunny outside."
- **q**: "We will go for a walk."

**Logical Formulation**:

1. Premise: :math:`p \rightarrow q` (If it is sunny outside, then we will go for a walk.)
2. Premise: :math:`p` (It is sunny outside.)
3. Conclusion: :math:`q` (Therefore, we will go for a walk.)

In this example, the premises lead to the conclusion using the Modus Ponens rule. If the first premise is true (it is sunny outside), and the second premise is also true (if it is sunny, we go for a walk), then the conclusion (we will go for a walk) logically follows.


Further reading
"""""""""""""""

See `wikipedia.org/wiki/Propositional_calculus <https://en.wikipedia.org/wiki/Propositional_calculus>`_ for more details.


Predicate logic
^^^^^^^^^^^^^^^

Predicate logic, also known as first-order logic, extends propositional logic by dealing with predicates and quantifiers. Unlike propositional logic, which operates on simple, unanalyzable propositions, predicate logic analyzes the internal structure of propositions.


Key Concepts
""""""""""""

Predicate
   A predicate is a function that takes an object and returns a truth value. It essentially describes a property or a relation among objects.

Quantifiers
   Quantifiers are operators that specify the quantity of specimens in the domain of discourse that satisfy an open sentence (predicate).

   Universal Quantifier ( ∀ )
      Indicates that the statement holds for all elements in the domain.

   Existential Quantifier ( ∃ )
      Indicates the existence of at least one element in the domain that satisfies the statement.

Domain of Discourse
   The set of all objects under consideration in a particular discussion or problem.


Examples
""""""""

Consider a domain of discourse consisting of animals. 
Let :math:`P(x)` represent "x is a cat."

Now, consider the statement:

   ∀x P(x): "All animals are cats."

This statement is false if the domain includes animals other than cats.

Expanding on the previous example, let's add another predicate:

   Let Q(x) represent "x can meow."

Now, consider the statement:

   ∀x (P(x) → Q(x)): "All cats can meow."

This statement implies that if an animal is a cat, then it can meow. It is a true statement in the context of our understanding of cats.

To negate this, we assert the existence of at least one cat that cannot meow, which is represented as:

   ∃x (P(x) ∧ ¬Q(x))

In natural language, this translates to:

   "There exists an x such that x is a cat and x cannot meow."

Recap
"""""

Predicate logic allows for the expression of more complex and nuanced statements about the world compared to propositional logic. Its use of quantifiers and predicates enables detailed analysis of the properties of objects and their relationships.