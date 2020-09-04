%{

Example of how to check your answer using extended and reduced precision

There's a corresponding python/numpy jupyter notebook as well

We'll test this on the function

    f(x) = e^x - 1

since the naive algorithm to evaluate this is unstable.

Author: Stephen Becker
%}

%% Method one: using just "single" (32 bits) and "double" (64 bits)
% We use the "double precision" version as the ground truth
%   and compare with the "single precision" version

x   = 1e-4;

digitList = 2.^(8:-1:4); % from high to low precision
[fx,gx,hx] = deal( zeros(2,1) ); % initialize all to empty array
f   = @(x,yOne) exp(x) - yOne;
g   = @(x) expm1(x); % doesn't work for symbolic
h   = @(x) x + x^2/2;

fx(1)   = f( x, 1 );
gx(1)   = g( x );
hx(1)   = h( x );

fx(2)   = f( single(x), single(1) );
gx(2)   = g( single(x) );
hx(2)   = h( single(x) );


trueAnswer  = hx(1); % whichever of f, g or h you think is most accurate
relAccuracy = @( guess ) abs( guess - trueAnswer )/abs( trueAnswer );
correctDigits = @(guess) -log10( relAccuracy(guess) + 1e-128 );

fprintf('For double precision, \n');
fprintf('  f has %.1f, g has %.1f, and h has %.1f correct digits\n', ...
    correctDigits( fx(1) ), correctDigits( gx(1) ), correctDigits( hx(1) ) );
fprintf('.. and for single precision, \n');
fprintf('  f has %.1f, g has %.1f, and h has %.1f correct digits\n', ...
    correctDigits( fx(2) ), correctDigits( gx(2) ), correctDigits( hx(2) ) );

% Conclusion: g and h are more accurate than f

%% (Bad) Method two: variable precision arithmetic
%{
Use as much precision as you want using the Symbolic Toolbox's "vba"
function.  See 
https://www.mathworks.com/help/symbolic/increase-precision-of-numeric-calculations.html

"You must wrap all inner inputs with vpa, such as exp(vpa(200)). 
Otherwise, the inputs are automatically converted to double by MATLAB."


This method is not recommended, as it calls different implementations
 of the functions (e.g., for exp(x), it calls

[matlabroot]/toolbox/symbolic/symbolic/@sym/exp.m
instead of
[matlabroot]/toolbox/matlab/elfun/@double/exp
or
[matlabroot]/toolbox/matlab/elfun/@single/exp

It is likely to give you misleading results

%}