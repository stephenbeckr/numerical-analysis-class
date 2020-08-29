# Syllabus for APPM/MATH 4650 Intermediate Numerical Analysis

Fall 2020, Instructor: Stephen Becker (Applied Math dept)
This semester, the course is remote-only due to COVID-19

### Official course description
Focuses on numerical solution of nonlinear equations, interpolation, methods in numerical integration, numerical solution of linear systems, and matrix eigenvalue problems. Stresses significant computer applications and software. Department enforced prerequisite: knowledge of a programming language.

Requires a **prerequisite** course of MATH 3430 or APPM 2360 and APPM 3310 (minimum grade C-).

### Related courses at CU
This course is similar to [CSCI-3656 Numerical Computation](https://github.com/cu-numcomp/numcomp-class/) but has a bit more analysis (and more math prerequisites), fewer implementation details, and similar but not identical topics.

### Programming
Homeworks will involve by mathematical analysis and programming.

Students are expected to already know how to program.  We encourage using Python and Matlab; Julia is another good choice though we will not be using it explicitly.  For homework assignments, usually the deliverable is the outcome of some code, so therefore the student may choose any reasonable programming language. However, we will be doing demonstrations in Python and/or Matlab (and the instructor/TA are best at debugging Python and Matlab).  Many of our demonstrations will be using [github](http://github.com) in conjunction with [colab](https://colab.research.google.com/)

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

### Week 1, Aug 24-28 2020
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

### Week 2, Aug 31-Sep 4 2020
- Mon: "Intro to scalar root-finding and optimization" (TBD)
