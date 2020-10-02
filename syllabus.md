# Syllabus for APPM/MATH 4650 Intermediate Numerical Analysis

Fall 2020, Instructor: Stephen Becker (Applied Math dept)
This semester, the course is remote-only due to COVID-19

### Official course description
Focuses on numerical solution of nonlinear equations, interpolation, methods in numerical integration, numerical solution of linear systems, and matrix eigenvalue problems. Stresses significant computer applications and software. Department enforced prerequisite: knowledge of a programming language.

Requires a **prerequisite** course of MATH 3430 or APPM 2360 and APPM 3310 (minimum grade C-).

### Related courses at CU
This course is similar to the CS department's [CSCI-3656 Numerical Computation](https://github.com/cu-numcomp/numcomp-class/) but has a bit more analysis (and more math prerequisites), fewer implementation details, and similar but not identical topics.

This APPM/MATH 4650 course is cross-listed in both the Applied Math and Math departments. It is offered every semester, being taught in the fall by an Applied Math faculty (usually 2 sections) and in the spring by a Math faculty (usually 1 section), and sometimes it is offered in the summer as well.  The second semester course is 4660, taught in spring by Applied Math; about half the students in 4650 take the second semester course.

### Programming
Homeworks will involve by mathematical analysis and programming.

Students are expected to already know how to program.  We encourage using Python and Matlab; Julia is another good choice though we will not be using it explicitly.  For homework assignments, usually the deliverable is the outcome of some code, so therefore the student may choose any reasonable programming language. However, we will be doing demonstrations in Python and/or Matlab (and the instructor/TA are best at debugging Python and Matlab).  Many of our demonstrations will be using [github](http://github.com) in conjunction with [python via colab](https://colab.research.google.com/).

### Principal Topics
- Floating point numbers
- Roots of 1D nonlinear equations
- Interpolation, polynomial approximation, splines
- Numerical integration (quadrature)
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

### Week 1, Aug 24-28 2020.  Chapter 1
- Mon: "Calculus Review" (20 min; [notes](Notes/Ch1_CalcReview.pdf)) and "Floating Point Numbers" (30 min; [notes](Notes/Ch1_FloatingPoint.pdf))
  - [Ch1_SymbolicTaylorSeries](Demos/Ch1_SymbolicTaylorSeries.ipynb) demo
- Wed: "Conditioning" (13 min; [notes](Notes/Ch1_ConditionNumber.pdf)) and "Stability" (13 min; [notes](Notes/Ch1_Stability.pdf)) and "Big-O notation" (26 min; [notes](Notes/Ch1_BigO_notation.pdf))
  - [Ch1_DataTypes](Demos/Ch1_DataTypes.ipynb) demo
  - [Ch1_ExponentialSummation](Demos/Ch1_ExponentialSummation.ipynb) demo (try the *student* branch version first)
- Fri: "Polynomials and Horner's Rule" (18 min; [notes](Notes/Ch1_PolynomiallConditioning_HornersRule.pdf)) and "Rates of convergence" (9 min; [notes](Notes/Ch1_ConvergenceRates.pdf))
  - [Ch1_Stability_simple](Demos/Ch1_Stability_simple.ipynb) demo (evaluating a quadratic, and relative error; try the *student* branch version first)
  - [Ch1_QuadraticFormula](Demos/Ch1_QuadraticFormula.ipynb) demo (quadratic root finding; try the *student* branch version first)
  - Optional: [Ch1_Extra_Conditioning](Demos/Ch1_Extra_Conditioning.ipynb) is a summary of ch 1 material from Jed Brown's course
  - Optional: [Ch1_RatesOfConvergence](Demos/Ch1_RatesOfConvergence.ipynb)

[//]: # ( The Friday notebooks went much better than others. )

### Week 2, Aug 31-Sep 4 2020.  Chapter 1 and 2
- Mon: "Intro to scalar root-finding" (18 min; [notes](Notes/Ch2_IntroRootfinding.pdf)), "Intro to scalar optimization" (10 min; [notes](Notes/Ch2_IntroOptimization.pdf)), "Condition number of root-finding" (14 min; [notes](Notes/Ch2_AnalysisRootFindingConditionNumber.pdf)), "multiple roots" (8 min; [notes](Notes/Ch2_MultipleRoots.pdf))
  - Finish up Friday demos
- Wed: "Bisection Method" (3 videos of 9, 8 and 4 minutes; [notes](Notes/Ch2_BisectionMainIdea.pdf))
  - [Ch2_Intersection_GraphingCalculator.ipynb](Demos/Ch2_Intersection_GraphingCalculator.ipynb) demo
- Fri: "Fixed Point Iteration" (3 videos of 9, 12 and 17 minutes; [notes](Notes/Ch2_FixedPointIteration.pdf))
  - [Ch2_IntroToBisection.ipynb](Demos/Ch2_IntroToBisection.ipynb) demo
  - [HowToCheckYourAnswerUsingExtendedPrecision.ipynb](Demos/HowToCheckYourAnswerUsingExtendedPrecision.ipynb) and [HowToCheckYourAnswerUsingExtendedPrecision.m](Demos/HowToCheckYourAnswerUsingExtendedPrecision.m)

### Week 3, Sep 9-Sep 11 2020.  Chapter 2
- Mon (no lecture due to Labor Day)
- Wed: "Newton's Method" (2 videos of 16 and 9.5 minutes; [notes](Notes/Ch2_NewtonsMethod.pdf))
  - [Ch2_FixedPointPlots.ipynb](Demos/Ch2_FixedPointPlots.ipynb) demo which uses a nice [geogebra online cobweb plotting app](https://www.geogebra.org/m/uvsfvNDt)
- Fri: "Newton's Method Variants" (secant method, etc.) (2 videos of 21 and 17.5 minutes; [notes](Notes/Ch2_NewtonsMethodVariants.pdf))
  - [Ch2_NewtonsMethod.ipynb](Demos/Ch2_NewtonsMethod.ipynb) demo

### Week 4, Sep 14-Sep 18 2020. Chapter 2 and 3
- Mon: "Aitken Extrapolation" (16 min video; [notes](Notes/Ch2_AitkenExtrapolation.pdf)) and "Zeros of Polynomials and Muller's Method" (8.5 min; [notes](Notes/Ch2_ZerosPolynomialMullers.pdf))
  - Note: we switched attendance models, and now use PlayPosit quizzes to record an attendance grade
  - Demo: finish the Newton's method demo from Friday
- Wed: "Intro to Interpolation" (24 min video; [notes](Notes/Ch3_IntroInterpolation.pdf)) and "Lagrange interpolation" (13 min video; [notes](Notes/Ch3_LagrangeAndBarycentricInterpolation.pdf))
  - [Ch2_AitkenExtrapolation.ipynb](Demos/Ch2_AitkenExtrapolation.ipynb) demo
- Fri: "Barycentric Interpolation formula" (17 min video; [same notes as before](Notes/Ch3_LagrangeAndBarycentricInterpolation.pdf)) and "Lagrange Interpolation Error Bounds" (10 min video; [same notes as before](Notes/Ch3_LagrangeAndBarycentricInterpolation.pdf)) and "Divided Differences, part 1" (11.5 min video; [notes](Notes/Ch3_DividedDifferences.pdf))
  - [Ch3_PolynomialInterpolation.ipynb](Demos/Ch3_PolynomialInterpolation.ipynb) demo, which also links to other demos

### Week 5, Sep 21-24 2020. Chapter 3
- Mon: "Divided Differences, part 2" (18 min; [same notes as before](Notes/Ch3_DividedDifferences.pdf)) and "Hermite Interpolation" (14 min; [notes](Notes/Ch3_Hermite.pdf))
  - Demo: continue demo from last Friday
- Wed: "Splines" (part 1, 15 min; part 2, 8 min; part 3, 24 min; [notes](Notes/Ch3_Splines.pdf) )
  - No Demo, but there's a [midterm review](Notes/Review_Midterm1.pdf) with [answers](Notes/Review_Midterm1.soln.pdf)
- Fri: Review / Q&A for midterm.  Take-home midterm handed out
  - The [written part of the midterm](Exams/Midterm1.pdf) (2 hours, open note, open book), and there was a 45 min true/false or multiple choice section we took via Canvas

### Week 6, Sep 28-Oct 2 2020. Chapter 4
- Mon: "Intro to numerical differentiation" (19 min; [notes](Notes/Ch4_FiniteDifferencesIntro.pdf))
  - Demo: [splines](Demos/Ch3_Splines.ipynb)
- Wed: "Finite differences" (32 min; [notes](Notes/Ch4_FiniteDifferences_more.pdf))
  - Demo: [finite differences](Demos/Ch4_FiniteDifferences.ipynb) which we did together in lecture
- Fri: "Richardson extrapolation" (23 min; [notes](Notes/Ch4_RichardsonExtrapolation.pdf))
  - Demo: none

### Week 7, Oct 5-Oct 9 2020. Chapter 4.
- Mon: integration




# Subjects on the midterms and final

## Midterm 1
The high-level set of topics is anything we've discussed in class up to and including the "Divided Differences" video of Monday Sept 21.

Below are specific chapters (in Burden and Faires 9th or 10th edition) that are covered:
- Chapter 1
  - 1.1 review of calc
  - 1.2 round-off errors
  - 1.3 algorithms and convergence, in particular big-O notation
- Chapter 2
  - 2.1 bisection method
  - 2.2 fixed point iteration
  - 2.3 Newton's method
  - 2.4 error analysis for iterative methods
  - 2.5 accelerating convergence [*skip* Steffensen's method]
  - 2.6 zeros of polynomials [fundamental theorem of algebra, but *skip* Horner's method as presented in the book (but you should know it as presented in the notes and HW), and *skip* Muller's method]
- Chapter 3
  - 3.1 interpolation and the Lagrange polynomial (*skip* 3.2 on Neville's method)
  - 3.3 divided differences

## Midterm 2
TBD

## Final Exam
TBD
