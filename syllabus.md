# Syllabus for APPM/MATH 4650 Intermediate Numerical Analysis

Fall 2020, Instructor: Stephen Becker (Applied Math dept)
This semester, the course is remote-only due to COVID-19

### Official course description
Focuses on numerical solution of nonlinear equations, interpolation, methods in numerical integration, numerical solution of linear systems, and matrix eigenvalue problems. Stresses significant computer applications and software. Department enforced prerequisite: knowledge of a programming language.

Requires a **prerequisite** course of MATH 3430 or APPM 2360 (these are ODE or ODE + linear algebra courses) and APPM 3310 (matrix methods), all with a minimum grade of C-.  We'll use a lot of math from your previous courses, especially:
- lots of calculus, including: Taylor's theorem, fundamental theorem of calculus, IVT, EVT, MVT, sequences and series, limits, continuity, Riemann sums, L'Hopital's rule
- Facts about polynomial roots (fundamental theorem of algebra); complex numbers
- Vector spaces, subspaces, bases
- Solving ODEs; ODE theory
- Solving linear equations, vector operations (dot products), matrix multiplication

### Related courses at CU
This course is similar to the CS department's [CSCI-3656 Numerical Computation](https://github.com/cu-numcomp/numcomp-class/) but has a bit more analysis (and more math prerequisites), fewer implementation details, and similar but not identical topics.

This APPM/MATH 4650 course is cross-listed in both the Applied Math and Math departments. It is offered every semester, being taught in the fall by an Applied Math instructor (usually 2 sections) and in the spring by a Math instructor (usually 1 section), and sometimes it is offered in the summer as well.  The second semester course is 4660, taught in spring by Applied Math; about half the students in 4650 take the second semester course.

### Programming
Homeworks will involve by mathematical analysis and programming.

Students are expected to already know how to program.  We encourage using Python and Matlab; Julia is another good choice though we will not be using it explicitly.  For homework assignments, usually the deliverable is the outcome of some code, so therefore the student may choose any reasonable programming language. However, we will be doing demonstrations in Python and/or Matlab (and the instructor/TA are best at debugging Python and Matlab).  Most of our demonstrations will be using [github](http://github.com) in conjunction with [python via colab](https://colab.research.google.com/).

### Principal Topics
- Floating point numbers
- Roots of 1D nonlinear equations
- Interpolation, polynomial approximation, splines
- Numerical differentiation and numerical integration (quadrature)
- Numerical methods for solving initial-value problems in ordinary differential equations
- Gaussian elimination, LU, and solving linear systems

### Learning Goals/Outcomes
[//]: # ( Not testable; high-level )
- Understand the sources of errors in computation, and be able to analyze the stability of an algorithm
- Be able to pick an appropriate computing environment and when to use existing libraries/frameworks
- Be able to translate numerical algorithms into fast, easy to read and generalizable pieces of software
- Know which mathematical problems are efficiently solvable on a computer
- Understand how polynomials are used in numerical algorithms
- Know how calculus concepts (differentiation, integration, ODEs) can be tackled in a computational setting
- Understand the advantages/disadvantages of the many existing schemes for solving initial value problems for ODEs.

### Learning Objectives (i.e., quantifiable outcomes)
[//]: # ( Something measurable )
- Determine when a problem is ill-conditioned and when an algorithm is unstable; understand the difference between symbolic and numeric computation, and floating-point and fixed-point arithmetic
- Identify the main categories of numerical problems
- Know basic methods, and their tradeoffs, for solving 1-dimensional nonlinear equations and multi-dimensional linear equations
- Understand how polynomials are used for quadrature rules, and the ideas of composite rules and non-equispaced nodes.
- Derive methods for numerically solving initial value problems for ODEs
- Analyzing an ODE method for stability and convergence


# High-level list of topics
Roughly, chapters 1--6 of [Burden and Faires' textbook](https://sites.google.com/site/numericalanalysis1burden/) (9th or 10th edition); the second-semester continuation of this course (4660) roughly covers chapters 7--12. The following is taken from the table of contents of the textbook:

1. Math preliminaries and error analysis
   - Review of calculus; round-off errors and computer arithmetic; algorithms and convergence
2. Solutions of Equations in One Variable
   - Bisection method; Fixed-point interation; Newton's method; Error analysis; Accelerating convergence; zeros of Polynomials and Muller's method
3. Interpolation and Polynomial Approximation
   - Interpolation and the Lagrange Polynomial; Data approximation and Neville's method; Divided Differences; Hermite Interpolation; Cubic Spline Interpolation; Parametric Curves
4. Numerical Differentiation and integration
   - Numerical differentiation; Richardson's Extrapolation; Numerical Integration; Composite Numerical Integration; Romberg Integration; Adaptive Quadrature; Gaussian Quadrature; Multiple and Improper Integrals
5. Initial-Value Problems for Ordinary Differential equations
   - Theory for IVP; Euler's Method; Higher-order Taylor Methods; Runge-Kutta; Error control and the Runge-Kutta-Fehlberg Method; Multistep methods; Variable step-size multistep methods; Extrapolation Methods; Higher-order Equations and Systems of ODE; Stability; Stiff equations
6. Direct Methods for Solving Linear Systems
   - Linear systems of equations; pivoting strategies; linear algebra and matrix inversion; the determinant; matrix factorization; special types of matrices

For reference, chapters 7--12, which are *not* covered in this first semester course, are:

7. Iterative Techniques in Matrix Algebra (Jacobi, Gauss-Siedel, CG)
8. Approximation Theory (orthogonal polynomials)
9. Approximating Eigenvalues (power method, Householder, QR, SVD)
10. Numerical solutions of nonlinear systems of Equations
11. Boundary-Value problems for ODEs
12. Numerical Solutions to Partial Differential Equations




# Detailed list of topics
i.e., what we actually covered.  Topics listed for dates in the future are just estimates.

### Week 1, Aug 24-28 2020.  Chapter 1 (preliminaries, floating pt numbers)
- Mon: "Calculus Review" (20 min; [notes](Notes/Ch1_CalcReview.pdf)) and "Floating Point Numbers" (30 min; [notes](Notes/Ch1_FloatingPoint.pdf)), ch 1.1 and 1.2 and other sources
  - [Ch1_SymbolicTaylorSeries](Demos/Ch1_SymbolicTaylorSeries.ipynb) demo
- Wed: "Conditioning" (13 min; [notes](Notes/Ch1_ConditionNumber.pdf)) and "Stability" (13 min; [notes](Notes/Ch1_Stability.pdf)) and "Big-O notation" (26 min; [notes](Notes/Ch1_BigO_notation.pdf)), mostly from Driscoll and Braun, some ch 1.3
  - [Ch1_DataTypes](Demos/Ch1_DataTypes.ipynb) demo
  - [Ch1_ExponentialSummation](Demos/Ch1_ExponentialSummation.ipynb) demo (try the *student* branch version first)
- Fri: "Polynomials and Horner's Rule" (18 min; [notes](Notes/Ch1_PolynomiallConditioning_HornersRule.pdf)), partly from Driscoll and Braun; and "Rates of convergence" (9 min; [notes](Notes/Ch1_ConvergenceRates.pdf)), from ch 2.4
  - [Ch1_Stability_simple](Demos/Ch1_Stability_simple.ipynb) demo (evaluating a quadratic, and relative error; try the *student* branch version first)
  - [Ch1_QuadraticFormula](Demos/Ch1_QuadraticFormula.ipynb) demo (quadratic root finding; try the *student* branch version first)
  - Optional: [Ch1_Extra_Conditioning](Demos/Ch1_Extra_Conditioning.ipynb) is a summary of ch 1 material from Jed Brown's course
  - Optional: [Ch1_RatesOfConvergence](Demos/Ch1_RatesOfConvergence.ipynb)

[//]: # ( The Friday notebooks went much better than others. )

### Week 2, Aug 31-Sep 4 2020.  Chapter 1 and 2
- Mon: "Intro to scalar root-finding" (18 min; [notes](Notes/Ch2_IntroRootfinding.pdf)), "Intro to scalar optimization" (10 min; [notes](Notes/Ch2_IntroOptimization.pdf)), "Condition number of root-finding" (14 min; [notes](Notes/Ch2_AnalysisRootFindingConditionNumber.pdf)), "multiple roots" (8 min; [notes](Notes/Ch2_MultipleRoots.pdf)); some from misc sources or Driscoll and Braun
  - Finish up Friday demos
- Wed: "Bisection Method" (3 videos of 9, 8 and 4 minutes; [notes](Notes/Ch2_BisectionMainIdea.pdf)), from ch 2.1
  - [Ch2_Intersection_GraphingCalculator.ipynb](Demos/Ch2_Intersection_GraphingCalculator.ipynb) demo
- Fri: "Fixed Point Iteration" (3 videos of 9, 12 and 17 minutes; [notes](Notes/Ch2_FixedPointIteration.pdf)), from ch 2.2
  - [Ch2_IntroToBisection.ipynb](Demos/Ch2_IntroToBisection.ipynb) demo
  - [HowToCheckYourAnswerUsingExtendedPrecision.ipynb](Demos/HowToCheckYourAnswerUsingExtendedPrecision.ipynb) and [HowToCheckYourAnswerUsingExtendedPrecision.m](Demos/HowToCheckYourAnswerUsingExtendedPrecision.m)

### Week 3, Sep 9-Sep 11 2020.  Chapter 2 (root-finding, etc)
- Mon (no lecture due to Labor Day)
- Wed: "Newton's Method" (2 videos of 16 and 9.5 minutes; [notes](Notes/Ch2_NewtonsMethod.pdf)), from ch 2.3
  - [Ch2_FixedPointPlots.ipynb](Demos/Ch2_FixedPointPlots.ipynb) demo which uses a nice [geogebra online cobweb plotting app](https://www.geogebra.org/m/uvsfvNDt)
- Fri: "Newton's Method Variants" (secant method, etc.) (2 videos of 21 and 17.5 minutes; [notes](Notes/Ch2_NewtonsMethodVariants.pdf))
  - [Ch2_NewtonsMethod.ipynb](Demos/Ch2_NewtonsMethod.ipynb) demo

### Week 4, Sep 14-Sep 18 2020. Chapter 2 and 3
- Mon: "Aitken Extrapolation" (16 min video; [notes](Notes/Ch2_AitkenExtrapolation.pdf)) and "Zeros of Polynomials and Muller's Method" (8.5 min; [notes](Notes/Ch2_ZerosPolynomialMullers.pdf)), from ch 2.5 and 2.6
  - Note: we switched attendance models, and now use PlayPosit quizzes to record an attendance grade
  - Demo: finish the Newton's method demo from Friday
- Wed: "Intro to Interpolation" (24 min video; [notes](Notes/Ch3_IntroInterpolation.pdf)) and "Lagrange interpolation" (13 min video; [notes](Notes/Ch3_LagrangeAndBarycentricInterpolation.pdf)), from ch 3.1
  - [Ch2_AitkenExtrapolation.ipynb](Demos/Ch2_AitkenExtrapolation.ipynb) demo
- Fri: "Barycentric Interpolation formula" (17 min video; [same notes as before](Notes/Ch3_LagrangeAndBarycentricInterpolation.pdf)) from Driscoll and Braun and [Berrut and Trefethen's 2004 SIAM Review article](https://people.maths.ox.ac.uk/trefethen/barycentric.pdf); and "Lagrange Interpolation Error Bounds" (10 min video; [same notes as before](Notes/Ch3_LagrangeAndBarycentricInterpolation.pdf)) ch 3.2; and "Divided Differences, part 1" (11.5 min video; [notes](Notes/Ch3_DividedDifferences.pdf)) from ch 3.3
  - [Ch3_PolynomialInterpolation.ipynb](Demos/Ch3_PolynomialInterpolation.ipynb) demo, which also links to other demos
  - Further resources on Lagrange interpolation:
    - [8 min youtube video](https://www.youtube.com/watch?v=_zK_KhHW6og) (nice handwriting)
    - [42 min youtube video](https://www.youtube.com/watch?v=M8hF7QChkSY) (with Vandermonde matrix and divided differences) -- this is a standard classroom blackboard lecture from Wen Shen at Penn State (textbook author, nice handwriting)
    - [13 min youtube video](https://www.youtube.com/watch?v=C1Jijw3VaI0)

### Week 5, Sep 21-24 2020. Chapter 3 (interpolation, etc.)
- Mon: "Divided Differences, part 2" (18 min; [same notes as before](Notes/Ch3_DividedDifferences.pdf)) from ch 3.3; and "Hermite Interpolation" (14 min; [notes](Notes/Ch3_Hermite.pdf)) from ch 3.4
  - Demo: continue demo from last Friday
- Wed: "Splines" (part 1, 15 min; part 2, 8 min; part 3, 24 min; [notes](Notes/Ch3_Splines.pdf) ) from ch 3.5 (we'll skip ch 3.6)
  - No Demo, but there's a [midterm review](Notes/Review_Midterm1.pdf) with [answers](Notes/Review_Midterm1.soln.pdf)
- Fri: Review / Q&A for midterm.  Take-home midterm handed out
  - The [written part of the midterm](Exams/Midterm1.pdf) (2 hours, open note, open book), and there was a 45 min true/false or multiple choice section we took via Canvas

### Week 6, Sep 28-Oct 2 2020. Chapter 4 (finite differences)
- Mon: "Intro to numerical differentiation" (19 min; [notes](Notes/Ch4_FiniteDifferencesIntro.pdf)), ch 4.1
  - Demo: [splines](Demos/Ch3_Splines.ipynb)
- Wed: "Finite differences" (32 min; [notes](Notes/Ch4_FiniteDifferences_more.pdf)), ch 4.1
  - Demo: [finite differences](Demos/Ch4_FiniteDifferences.ipynb) which we did together in lecture
- Fri: "Richardson extrapolation" (23 min; [notes](Notes/Ch4_RichardsonExtrapolation.pdf)), ch 4.2
  - Demo: none

### Week 7, Oct 5-Oct 9 2020. Chapter 4 (numerical integration)
- Mon: "Intro to quadrature" (28 min; [notes](Notes/Ch4_quadrature_intro.pdf)), and "Newton Cotes formula" (2 videos, 12 min each; [notes](Notes/Ch4_quadrature_NewtonCotes.pdf)) from ch 4.3
  - Demo: [Misc_speedExamples.ipynb](Demos/Misc_speedExamples.ipynb) and [Ch4_RichardsonExtrapolation.ipynb](Demos/Ch4_RichardsonExtrapolation.ipynb)
- Wed: "Composite quadrature" (29 min; [notes](Notes/Ch4_quadrature_composite.pdf)) from ch 4.4
  - Demo: [Ch4_integration.ipynb](https://github.com/stephenbeckr/numerical-analysis-class/blob/master/Demos/Ch4_integration.ipynb)
  - Note: we are *not* covering Gregory's method; if you're interested, see Bengt Fornberg's talk [Gregory formulas and improving on the Trapezoidal rule](https://www.colorado.edu/amath/sites/default/files/attached-files/2019_unm_0.pdf)
- Fri: "Romberg integration" (31 min; [notes](Notes/Ch4_RombergIntegrationEulerMacLaurin.pdf)) from ch 4.5
  - Demo: [Ch4_CompositeIntegration.ipynb](Demos/Ch4_CompositeIntegration.ipynb)

### Week 8, Oct 12-Oct 16 2020. Chapter 4 (numerical integration)
- Mon: "Adaptive integration" (28 min; [notes](Notes/Ch4_AdaptiveIntegration.pdf)) from ch 4.6
  - Demo: [Ch4_RombergIntegration.ipynb](Demos/Ch4_RombergIntegration.ipynb)
- Wed: "Gaussian quadrature" (2 videos, 21 min and 32 min; [notes](Notes/Ch4_GaussianQuadrature.pdf)) from ch 4.7 and Driscoll and Braun
  - Demo: [Ch4_AdaptiveIntegration.ipynb](Demos/Ch4_AdaptiveIntegration.ipynb)
  - Further resources on Gaussian quadrature:
    - a 4 part youtube video series:
          1. [Preview](https://www.youtube.com/watch?v=k-yUdqRXijo)
          2. [Part 1: Legendre polynomials](https://www.youtube.com/watch?v=65zwMgGZnUs)
          3. [Part 2: Determining the weights](https://www.youtube.com/watch?v=nQZYBWB6q_k)
          4. [Part 3: Explanation](https://www.youtube.com/watch?v=cKKrGr93f6c)
    - Lloyd Trefethen, "[Is Gauss Quadrature Better than Clenshaw–Curtis?](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.157.4174&rep=rep1&type=pdf)"", SIAM Review 50(1), pp. 67–87 (2008)
    - Topics in our class: Gauss-Legendre, Gauss-Laguerre, Gauss-Hermite; *skip* Chebyshev-Gauss. Note that we are *not* covering Clenshaw-Curtis
- Fri: "Multiple Integrals" (26 min; [notes](Notes/Ch4_MultipleIntegrals.pdf)), from ch 4.8
  - Demo: [Ch4_GaussianQuadrature.ipynb](Demos/Ch4_GaussianQuadrature.ipynb)

### Week 9, Oct 19-Oct 23 2020. Chapter 4 (numerical integration) and start Ch 5 (ODE solvers)
- Mon: "Improper Integrals" (40 min; [notes](Notes/Ch4_ImproperIntegrals.pdf)) from ch 4.9
  - Demo: [Ch4_MultidimensionalIntegrals.ipynb](Demos/Ch4_MultidimensionalIntegrals.ipynb)
- Wed: "Introduction to ODEs" (44 min; [notes](Notes/Ch5_IntroToODEs.pdf)), putting them in context (we did *not* discuss DAE; see [Ch5_ODE_resources.md](Notes/Ch5_ODE_resources.md) for a brief discussion we did later), ch 5.1 (ODE theory) and misc.
  - Demo: [Ch4_ImproperIntegrals.ipynb](Demos/Ch4_ImproperIntegrals.ipynb)
  - We are *not* covering PDEs, implicit ODEs, nor [DAEs](https://en.wikipedia.org/wiki/Differential-algebraic_system_of_equations), but we are covering *systems of ODEs*
- Fri: "Euler's Method" (2 videos, intro and error analysis, 10 and 35 min; [notes](https://github.com/stephenbeckr/numerical-analysis-class/blob/master/Notes/Ch5_EulersMethod.pdf)), ch 5.2
  - Demo: [Ch5_ODEs.ipynb](Demos/Ch5_ODEs.ipynb)


### Week 10, Oct 26-Oct 30 2020. Chapter 5 (ODE solvers) and midterm
- Mon: "Systems of ODEs" (32 min; [notes](Notes/Ch5_SystemsOfODEs.pdf)), ch 5.9
  - Demo: [Ch5_EulersMethod.ipynb](Demos/Ch5_EulersMethod.ipynb)
- Wed: "Higher-order Taylor Methods" and local truncation error (26 min; notes), ch 5.3
  - Demo: [Ch5_SystemsOfODEs.ipynb](Demos/Ch5_SystemsOfODEs.ipynb)
- Fri: Review / Q&A for midterm 2. Take-home midterm handed out
  - The written part of the midterm (2 hours, open note, open book), and there is a 45 min true/false or multiple choice section we take on Canvas
  - Here's a [review sheet](Notes/Review_Midterm2.pdf) and the [review sheet solutions](Notes/Review_Midterm2.soln.pdf)
  - We also have a conceptual review sheet from the Driscoll and Braun textbook (PDF on Canvas)

### Week 11, Nov 2-Nov 5 2020. Chapter 5 (ODE solvers)
- Mon: "Intro to Runge Kutta" (2 videos, 23 min and 9 min; [notes](Notes/Ch5_RungeKutta_intro.pdf)), ch 5.4
  - No demo, but we went over [Ch5_ODE_resources.md](Notes/Ch5_ODE_resources.md)
- Wed: "More Runge Kutta" (2 videos, 18 and 15 min; [notes](Notes/Ch5_RungeKutta_part2.pdf)), still ch 5.4, adding in lots of Driscoll and Braun
  - Demo: [Ch5_RungeKutta.ipynb](Demos/Ch5_RungeKutta.ipynb)
- Fri: "Adaptive Runge Kutta" and Runge Kutta Fehlberg (29 min; [notes](Notes/Ch5_AdaptiveRK.pdf)), ch 5.5 and lots of Driscoll and Braun
  - Demo: [Ch5_OrbitDemo.ipynb](Demos/Ch5_OrbitDemo.ipynb) on [Verlet integration](https://en.wikipedia.org/wiki/Verlet_integration)

### Week 12, Nov 9-Nov 13 2020. Chapter 5 (ODE solvers)
- Mon: "Multistep methods" and predictor-corrector (2 videos, 19 min and 7 min; [notes](Notes/Ch5_MultistepMethods.pdf))
  - No demo
- Wed: "Adaptive multistep methods and extrapolation" (15 min; [notes](Notes/Ch5_AdaptiveMultistepMethods_and_Extrapolation.pdf)), ch 5.7 and 5.8; as you can tell from the short video, we're not emphasizing this material much
  - Demo: [Ch5_MultistepMethods.ipynb](Demos/Ch5_MultistepMethods.ipynb)
- Fri: "Stability", definitions of consistency/convergence/stability, and stability/convergence of one-step methods (2 videos, 23 min and 18 min; [notes](Notes/Ch5_Stability_1_definitionsOneStep.pdf)), ch 5.10
  - Demo: [Ch5_MultistepMethods_implicit.ipynb](Demos/Ch5_MultistepMethods_implicit.ipynb) continuing what we did last demo but using Newton's method and others to solve implicit update

### Week 13, Nov 16-Nov 20 2020. Chapter 5 (ODE solvers)
- Mon: "Stability of multistep methods" and the characteristic polynomial (40 min; [notes](Notes/Ch5_Stability_2_multistep.pdf)), ch 5.10 continued
  - No demo
- Wed: "Stability Examples" (30 min; [notes](Notes/Ch5_Stability_3_examples.pdf))
  - Demo: [Ch5_Stability.ipynb](Demos/Ch5_Stability.ipynb)
- Fri: "Stiff Equations and Absolute Stability, part 1" (25 min, [notes](Notes/Ch5_Stability_4_stiff_absoluteStability.pdf)), ch 5.11
  - No demo

### Week 14, Nov 23-Nov 27 2020. Chapter 5 (ODE solvers), then Chapter 6 (linear algebra)
- Mon: "Stiff Equations and Absolute Stability, part 2" (19 min, [notes (same as previous class)](Notes/Ch5_Stability_4_stiff_absoluteStability.pdf), and "Intro/review of linear algebra" (33 min; [notes](Notes/Ch6_LinearAlgebraIntro.pdf))
  - Demo: [Ch5_AbsoluteStability.ipynb](Demos/Ch5_AbsoluteStability.ipynb)
- Wed: Complexity of Matrix Multiplication" (22 min; the last part of the video is optional; [notes](Notes/Ch6_ComplexityMatrixMultiplication.pdf)) and "Systems of Linear Equations and Gaussian Elimination" (31 min; [notes](Notes/Ch6_SystemsOfEquations_GaussianElimination.pdf); we discuss some BLAS)
  - Demo: [Ch6_MatrixMultiplication.ipynb](Demos/Ch6_MatrixMultiplication.ipynb), talk about BLAS and LAPACK
- Fri: no class (Thanksgiving break)

### Week 15, Nov 30-Dec 4 2020. Chapter 6 (systems of linear equations)
In chapter 6, we're roughly covering the material from the book, but adding more (conditioning, more details on LAPACK/BLAS), and doing it in a differentn order
- Mon: "LU factorization" (3 videos of 10--12 min each; [notes](Notes/Ch6_LUfactorization.pdf))
  - Demo: no demo, but examples of numerics in practice
  - COVID
    - [Machine Learning to find antivirals](https://spectrum.ieee.org/artificial-intelligence/medical-ai/can-ai-and-automation-deliver-a-covid19-antiviral-while-it-still-matters)
    - Molecular Dynamic simulations to find a vaccine, [summary](https://pubs.acs.org/doi/10.1021/acscentsci.0c01236#) and [main article](https://pubs.acs.org/doi/10.1021/acscentsci.0c01056)
    - [Modeling the spread of COVID](https://spectrum.ieee.org/artificial-intelligence/medical-ai/why-modeling-the-spread-of-covid19-is-so-damn-hard) via ML, ODE compartmental (SIR) and agent-based models
    - and the timely Nov 30 2020 [DeepMind protein folding breakthrough](https://www.nytimes.com/2020/11/30/technology/deepmind-ai-protein-folding.html)
  - [Border & Becker paper](https://rdcu.be/bMwR2) on heritability
    - Take statistics model, reduce computation time from $O(n^3)$ to $O(n^2)$
    - Solving linear equations (via Lanczos, which you'll learn about next semester)
    - Convert $\log(\det(X))$ to an integral, solve via Gaussian Quadrature, ties in with Lanczos
    - Exploit a lot of linear algebra facts
  - Many examples from CU. Here are just a handful:
    - Alireza Doostan (CU aerospace), [Pass-efficient methods for compression of high-dimensional turbulent flow data](https://arxiv.org/pdf/1905.13257.pdf)
    - Paul Constantine (CU CS), see his [Model Reduction for Complex Systems](https://vimeo.com/159629096) talk (about 5 min we see some applications)
    - John Evans and Kurt Maute (CU aerospace), [Adaptive level set topology optimization using hierarchical B-splines](https://arxiv.org/pdf/1909.10607.pdf). Focus on optimization as well as representing geometries (B-splines)
  - The [Chemical & Physical Oceanography group](https://www.colorado.edu/atoc/research/chemical-physical-oceanography) in the ATOC department (and they involve many researchers outside ATOC too, e.g., applied math)
- Wed: "LU factorization details: pivoting" (26 min) and "LU factorization details: block factorization and special types of matrices" (19 min); both videos have these [notes](Notes/Ch6_LU_details_pivoting_Cholesky.pdf)
  - Demo: [Ch6_LU_vs_Cholesky.ipynb](Demos/Ch6_LU_vs_Cholesky.ipynb) (short)
- Fri: "Conditioning of solving linear systems" (20 min; introduces the spectra norm; [notes](Notes/Ch6_ConditioningOfLinearSystems.pdf)) and "Least Squares" (16 min; normal equations and QR; [notes](Notes/Ch6_LeastSquares.pdf))
  - Demo: [Ch6_conditioning_LeastSquares.ipynb](Demos/Ch6_conditioning_LeastSquares.ipynb) (long) and [Ch6_RepeatedSolves.ipynb](Demos/Ch6_RepeatedSolves.ipynb) (short)


# Subjects on the midterms and final

You might try the [midterm study guide jupyter notebook](https://github.com/cu-numcomp/numcomp-class/blob/master/Midterm-StudyGuide.ipynb) used for the CS department's version of this class.

Both midterm exams were take-home exams, self-timed with generous time limits. They had true-false/multiple-choice component via Canvas (closed note, closed book) for 45 min, and then 2 hours to solve word problems (scanned, uploaded to Gradescope) which was open note and open book but closed internet.  The exams are posted at [Exams](./Exams); solutions are available on Canvas.

## Midterm 1
The high-level set of topics is anything we've discussed in class up to and including the "Divided Differences" video of Monday Sept 21.

See the [Midterm 1 review](Notes/Review_Midterm1.pdf) and [Midterm 1 review solutions](Notes/Review_Midterm1.soln.pdf)

Below are specific chapters (in Burden and Faires 9th or 10th edition) that are covered:
- Chapter 1 (preliminaries and error analysis)
  - 1.1 review of calc
  - 1.2 round-off errors
  - 1.3 algorithms and convergence, in particular big-O notation
- Chapter 2 (scalar root-finding)
  - 2.1 bisection method
  - 2.2 fixed point iteration
  - 2.3 Newton's method
  - 2.4 error analysis for iterative methods
  - 2.5 accelerating convergence [*skip* Steffensen's method]
  - 2.6 zeros of polynomials [fundamental theorem of algebra, but *skip* Horner's method as presented in the book (but you should know it as presented in the notes and HW), and *skip* Muller's method]
- Chapter 3 (interpolation and polynomial approximation)
  - 3.1 interpolation and the Lagrange polynomial (*skip* 3.2 on Neville's method)
  - 3.3 divided differences

## Midterm 2

See the [Midterm 2 review](Notes/Review_Midterm2.pdf) and [Midterm 2 review solutions](Notes/Review_Midterm2.soln.pdf)

- Chapter 3 (interpolation and polynomial approximation)
  - 3.4 Hermite Interpolation
  - 3.5 cubic splines
- Chapter 4 (numerical differentiation and integration)
  - 4.1 intro: basic concepts (e.g., using interpolation), finite difference formulas
  - 4.2 Richardson extrapolation
  - 4.3 numerical integration (quadrature), Newton-Cotes formulas
  - 4.4 composite quadrature
  - 4.5 Romberg integration
  - 4.6 Gaussian quadrature (Gauss-Legendre, Gauss-Laguerre, Gauss-Hermite; *skip* Chebyshev-Gauss). Note that we are *not* covering Clenshaw-Curtis
  - 4.7 multiple (higher-dimension) integrals
  - 4.8 improper integrals
- Chapter 5 (numerical methods for IVPs/ODEs)
  - 5.1 intro and theory for IVPs and ODEs
  - 5.2 Euler's method

## Final Exam
The final is cumulative, but with extra emphasis on the following topics

See the [Final Exam review](Notes/Review_Final.pdf) and [Final Exam review solutions](Notes/Review_Final.soln.pdf); see also the conceptual review sheet "KeyIdeas_DriscollBraun.pdf" on canvas

The most important topics are marked with an asterisk*
- Chapter 5 (numerical methods for IVPs/ODEs)
  - 5.3 higher-order Taylor Methods
  - 5.4 *Runge-Kutta Methods
  - 5.5 error control and the Runge-Kutta-Fehlberg method (i.e., embedded formula)
  - 5.6 *multistep methods
  - 5.7 variable step-size Multistep methods
  - 5.8 extrapolation methods
  - 5.9 *higher-order equations and systems of ODEs
  - 5.10 *stability (zero-stability/root-condition)
  - 5.11 *stiff ODEs (absolute stability)
- Chapter 6 (solving linear systems of equations)
  - 6.1 *linear systems of equations
  - 6.2 pivoting strategies
  - 6.3 *linear algebra and matrix inversion (this should be review, but is's very important, so it has an asterisk)
  - 6.4 determinant of a matrix (we didn't do a lecture on this but it's review from your linear algebra class, so you should make sure you're familiar with it)
  - 6.5 *matrix factorization (LU factorization)
  - 6.6 special types of matrices (LDL, Cholesky, tridiagonal systems)
  - You should know the complexity of matrix multiplication
  - You should have an understanding of LAPACK and BLAS
  - The condition number of a matrix and its relevance
  - We are *not* testing on least-squares methods

Details on the final exam: unlike the midterms, this is not take-home.  We'll have a true-false/multiple-choice section on Canvas, then a written section that you'll scan and upload to Gradescope. There are 2.5 hours for the exam. We'll do this via zoom and you need your webcam on. We'll also use Proctorio, so make sure you have Chrome installed as well as the Proctorio Chrome extension.  This is an open-note exam and you can use your notes, my notes, and the book, but no internet is allowed (other than Canvas/Gradescope).
