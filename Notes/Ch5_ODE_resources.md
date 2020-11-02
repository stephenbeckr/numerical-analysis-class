# ODE resources

This supplements the hand-written notes with some links to further information

## Implicit ODEs and DAEs

The standard first-order ODE is $$y' = f(t,y)$$, but there are **implicit** ODEs that are written in the form $g(t,y,y')=0$, and one could in theory solve for $y'$ (e.g., if the conditions of the [implicit function theorem](https://en.wikipedia.org/wiki/Implicit_function_theorem) are met) and rewrite this as $y'=f(t,y)$ but it may be very inconvenient to do so.

For example, $(y')^2 = y + t$ can be written as $g(t,y,y')=0$ easily, but solving for $y'=f(t,y)$ is complicated because sometimes $y' = +\sqrt{y+t}$ and sometimes $y' = -\sqrt{y+t}$.

A related case is when we have $g(t,y,y')=0$ and we *cannot* in theory locally convert it to a function, e.g., the conditions of the implicit function theorem to not hold.  Then we call it a [Differential-algebraic Equation (DAE)](https://en.wikipedia.org/wiki/Differential-algebraic_system_of_equations), and it's more complicated to solve.

The numerical methods we've talked about, and the Python/Matlab solvers we've seen, do not cover implicit ODEs and DAEs.  Matlab does have an implicit ODE solver called [ode15i](https://www.mathworks.com/help/matlab/ref/ode15i.html), but unfortunately Python/Scipy does not have an equivalent version in its [integrate package](https://docs.scipy.org/doc/scipy/reference/integrate.html).

Perhaps the best way to solve it in Python is via a 3rd party package. You can also call Julia from Python, and so you can use the comprehensive [DifferentialEquations.jl](https://diffeq.sciml.ai/stable/#Installing-from-Python) Julia package. This has every conceivable solver, and includes specialized solvers for many situations, such as coupled 2nd order ODEs (you could rewrite as a system, but there are more targeted methods), [sympletic integrators](https://en.wikipedia.org/wiki/Symplectic_integrator), stiff equations, DAEs, stochastic differential equations, boundary value problems, etc.  It has very nice tutorials, and discussions about when to use which solver.

## Python
As mentioned in the DAE section, using the Julia package  [DifferentialEquations.jl](https://diffeq.sciml.ai) from within Python is not a bad option.  The [scipy.integrate package](https://docs.scipy.org/doc/scipy/reference/integrate.html) is reasonable but not completely fully featured.

## Matlab
Matlab requires you to specify a solver.  From some [nice old documentation](http://eaton.math.rpi.edu/faculty/holmes/courses/csums/spring09/resources/ode.help.pdf), we have these solvers:

| Solver      | Type of problems | Method |
| ----------- | ----------- | ---- |
| ode45      | nonstiff ODEs       | Runge-Kutta
| ode23   | nonstiff ODEs        | Runge-Kutta
| ode113 | nonstiff ODEs  | Adams  |
| ode15s   | stiff ODEs and DAEs  |  NDFs (BDFs) |
| ode23s   |  stiff ODEs | Rosenbrock  |
| ode23t   | moderately stiff ODEsd and DAEs  |  Trapezoidal rule |
| ode23tb  | stiff ODEs  | TR-BDF2  |
| ode15i   | fully implicit ODEs  | BDFs  |

ode45 is based on an explicit Runge-Kutta (4,5) formula, the Dormand-Prince pair. It is a one-step solver – in computing $y(t_n)$, it needs only the solution at the immediately preceding time point, $y(t_{n-1})$. In general, ode45 is the best function to apply as a "first
try" for most problems.

ode23 is based on an explicit Runge-Kutta (2,3) pair of Bogacki and Shampine. It may be more efficient than ode45 at crude tolerances and in the presence of mild stiffness. Like ode45, ode23 is a one-step solver

ode113 is variable order Adams-Bashforth-Moulton PECE solver. It may be more efficient than ode45 at stringent tolerances and when the ODE function is particularly expensive to evaluate. ode113 is a multistep solver—it normally needs the solutions at several preceding time points to compute the current solution

The most current documentation is at the [Mathworks "ODE" help page](https://www.mathworks.com/help/matlab/ordinary-differential-equations.html) and the [Choose an ODE Solver page](https://www.mathworks.com/help/matlab/math/choose-an-ode-solver.html), and their help pages also discuss [Matlab solvers for DAEs](https://www.mathworks.com/help/matlab/math/solve-differential-algebraic-equations-daes.html), which requires not just a solver, but the `decic` function to find consistent initial conditions.

## Examples of ODEs

- [Synchronization of metronomes](http://www.math.pitt.edu/~bard/classes/mth3380/syncpapers/metronome.pdf), J. Pantaleone, Am. J. Phys. 70 (10), October 2002. Many good videos of this on youtube, e.g., this [2 min Harvard Natural Sciences Lecture](https://youtu.be/Aaxw4zbULMs) and this [1 min UCLA video](https://youtu.be/T58lGKREubo)
- [symplectic methods for asteroid orbits (28 min video)](https://youtu.be/zLnIWwvfuo4).  The first 4 min of the video are a good review of Runge-Kutta
- Aerodynamics: at what angle should you throw a ball to maximize how far it goes? A nice [website discussion](http://www.physics.usyd.edu.au/~cross/TRAJECTORIES/Trajectories.html) by one of the authors of "The Physics and Technology of Tennis" (see their [chapter on ball trajectories](http://www.physics.usyd.edu.au/~cross/TRAJECTORIES/42.%20Ball%20Trajectories.pdf)). Many other internet sites with info on this, often trying to fit data from observations and adding in spin, altitude, humidity, etc; see [The Physics of Baseball trajectory Calculator](http://baseball.physics.illinois.edu/trajectory-calculator-new3D.html) by Alan Nathan.
