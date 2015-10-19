# cme257hw6

USAGE:
jset(Function, real-coordinate array, imaginary-coordinate array, iteration count, divergence threshold)

Generates a julia set matrix of the specified function over the lattice defined by the real and imaginary coordinate arrays.

The 

Usage examples for this library:

function R(z::Complex)
    return z^2 + im - 0.5
end

a = jset(R, collect(-100:100)/100, collect(-100:100)/100, 100, 100.)

This generates the julia set of the function z^2 + i - .5 in the square [-1,1]x[-1,1] 
with resolution 1/100, with 100 steps to convergence and a tolerance of 100.0.

a = jset_viz(R, collect(-100:100)/100, collect(-100:100)/100, 100, 100.)

This automatically generatates a plot of the same example above. Requires Gadfly.
