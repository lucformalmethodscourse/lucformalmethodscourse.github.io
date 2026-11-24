Lecture Notes: Formal Methods
=============================

COMP 335/435
| `Department of Computer Science <http://luc.edu/cs>`_
| `Loyola University Chicago <http://luc.edu>`_

You have reached the home of the Formal Methods course (COMP 335/435) in the Computer Science Department of Loyola University Chicago.
This version of the course is normally taught by `Konstantin Läufer <https://laufer.cs.luc.edu>`_.


*Welcome! Willkumme! ¡Bienvenidos/as! Benvenuti/e!*

.. warning::

   These notes are currently under construction for spring 2027, so expect a few rough edges. But we're getting closer!
   Your contributions are *highly welcome!*
   Please submit `issues <https://github.com/lucformalmethodscourse/lucformalmethodscourse.github.io/issues>`_
   and `pull requests <https://github.com/lucformalmethodscourse/lucformalmethodscourse.github.io/pulls>`_.


Why take this course?
---------------------

**Testing can show that bugs exist. It can never show that they don't.**

That gap is why security agencies are rethinking how software gets built. Memory-safety flaws like Heartbleed, which exposed over 800,000 of the web's most-visited sites, have plagued software for 35 years. NSA and CISA now urge a shift to memory-safe languages. When Android prioritized them for new code, memory-safety bugs fell from 76% to 24% of its vulnerabilities. 

But those agencies are clear that language choice is no cure-all, and a White House technical report calls testing "necessary but insufficient." It points to **formal methods**, mathematical techniques for demonstrating that software meets its requirements, as a way to gain assurance that entire classes of vulnerabilities, well beyond memory bugs, are absent. It also notes that formal methods remain under-used and need to become far more accessible.

**That's where this course comes in.** DARPA reports that formal methods have already made quadcopters, helicopters, and automobiles resistant to cyberattack, and that broad adoption is the next hurdle. You can help clear it.

**Formal methods are also at the center of the AI revolution.** When AI models recently cracked longstanding open math problems—including the Jacobian conjecture, Navier-Stokes, and the Riemann hypothesis—they relied on Lean, a dependently typed functional language and proof assistant, to machine-check every logical step down to the axioms. That same technology lets you verify that critical software and AI-generated code actually do what they claim.

What you'll do
^^^^^^^^^^^^^^

- **Say what you mean.** Learn to state precisely what a system must (and must not) do, using formal specification built on the discrete-math foundations you already know.
- **Explore every possibility.** Use model checking to examine all the ways a design can behave, including the rare corner cases tests miss.
- **Prove it with Lean.** Get hands-on experience with the proof assistant powering 2026's AI-enabled math breakthroughs to machine-verify properties that testing and model checking alone can't cover.
- **Watch it run.** Apply runtime verification to check, while a program executes, that it keeps its promises.
- **Connect it to practice.** See where these techniques fit alongside testing in everyday software engineering.

What you'll take with you
^^^^^^^^^^^^^^^^^^^^^^^^^

You'll learn a way of thinking that outlasts any framework or language: asking "what exactly must be true, and how do I know it is?" Whether you build web services, embedded systems, or AI-assisted code, that question makes you a sharper engineer. It's also a rare skill, because the White House report itself notes that formal methods are still not widely deployed.

**If you've ever shipped code and wondered "but what did I miss?", this course gives you better tools than hope.**

Go further with undergraduate research
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Curious how formal methods and AI meet in practice? Our [AI4FM project](http://ai4fm.cs.luc.edu/) studies how language models can help write and verify formal specifications—building directly on the tools and ideas in this course. Several undergraduates already co-author papers and build open datasets with our team. All you need to bring is curiosity, patience for detail, and a willingness to stick with tough problems.

See it in action: the microwave oven
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Consider a simple microwave oven. Safety says something bad never happens: the heating element is never on while the door is open. Liveness says something good eventually happens: if you close the door and press start, it eventually heats, and eventually stops. Testing a few button sequences can't tell you these hold in every situation, but a formal model can. Explore the microwave oven example to see how we specify both kinds of property and check them against every possible behavior, a preview of what you'll do all semester.

- `presentation slides <https://docs.google.com/presentation/d/1JiV463yvAvAq0gPybtmtVe4dumtHiEEf_r6eV1Mo4KE/edit?slide=id.g30ad3e90926_0_44#slide=id.g30ad3e90926_0_44>`_
- `model source <https://github.com/lucformalmethodscourse/microwave-tla>`_


.. toctree::
   :maxdepth: 3
   :caption: Contents
   :numbered:
   :hidden:

   10-overview
   15-softwareengineering
   20-foundations
   30-testing
   35-specification
   40-modelchecking
   50-rtverification
   70-summary

   80-software
   85-resources 
   90-syllabi
   95-todo


Build status and repository
---------------------------


Latest version
   |version|
   
Build status
   .. only:: html

      .. image:: https://github.com/lucformalmethodscourse/lucformalmethodscourse.github.io/actions/workflows/main.yml/badge.svg
         :target: https://github.com/lucformalmethodscourse/lucformalmethodscourse.github.io/actions
         :alt: GitHub Pages and Release PDF

   See `github.com/lucformalmethodscourse/lucformalmethodscourse.github.io/actions <https://github.com/lucformalmethodscourse/lucformalmethodscourse.github.io/actions>`_

Repository
   `github.com/lucformalmethodscourse/lucformalmethodscourse.github.io <https://github.com/lucformalmethodscourse/lucformalmethodscourse.github.io>`_

Releases
   The current book (|version|) in PDF is available at
   `GitHub Releases <https://github.com/lucformalmethodscourse/lucformalmethodscourse.github.io/releases/latest>`_



AI Disclosure
-------------

This text contains a mix of original writing and programming with strategic use of ChatGPT via intentional prompting. 
Some examples will be available in our repository with an appropriate build configurations and tests. 
We may also make some prompts and analyses available, similar to what my colleagues have done for their recent ongoing study of ChatGPT and Systems Programming. 
See also https://doi.org/10.6084/m9.figshare.22257274.



.. todo:: Indices and tables (put at end of TOC above)

   * :ref:`genindex`
   * :ref:`modindex`


.. todo:: add sample projects, activities, tests, and (tiered) master list for presentations
