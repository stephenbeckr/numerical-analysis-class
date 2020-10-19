%{
This is a companion to 
https://github.com/stephenbeckr/numerical-analysis-class/blob/master/Demos/Ch4_MultidimensionalIntegrals.ipynb
but in Matlab

I'm making this a function just so that we can define my2D_quadrature
 as a subfunction in the same file (since I don't want to split this
 demo into several files).
%}

function Ch4_MultidimensionalIntegrals

f = @(x,y) x.*y.^2; % use .* and .^ to vectorize it

a = 2.1; b = 2.5;
c = 1.2; d = 1.4;

I = (d^3-c^3)*(b^2-a^2)/6;  % true value of the double integral

% Check that we can use Matlab's builtin 2D integrator:
Q = integral2( f, a, b, c, d );
fprintf('\nUsing Matlab''s builtin "integral2":\n');
fprintf('  True integral is %.9f, estimate is %.9f, error is %.2e\n', I, Q, abs(I-Q) );


% baseQuadratureRule = integral; % this works
% == or, pass in options, like:
tol = 1e-10;
% baseQuadratureRule = @(f,a,b) integral(f,a,b,'AbsTol',tol,'RelTol',tol);
% or try...
baseQuadratureRule = @(f,a,b) quad(f,a,b,tol);

% Test our base quadrature rule
g = @cos; G = @sin; aa = -1; bb = 2;
Q = baseQuadratureRule( g,aa,bb );
fprintf('Error of based quadrature rule is %.2e\n', abs(G(bb)-G(aa)-Q))

% Test our 2D quadrature
Q = my2D_quadrature( f, a,b,c,d, baseQuadratureRule ); 

fprintf('Using our 2D quadrature rule:\n');
fprintf('  True integral is %.9f, estimate is %.9f, error is %.2e\n', I, Q, abs(I-Q) );


end % end of main function


% === subfunctions ===
function Q = my2D_quadrature( f, a,b,c,d, baseQuadRule )
g   = @(x) baseQuadRule( @(y)f(x,y), c, d );

g_array = @(xList) arrayfun( g, xList );
Q   = baseQuadRule( g_array, a, b );
end % end of subfunction