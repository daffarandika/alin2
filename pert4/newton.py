# Python3 code for implementation of Newton
# Raphson Method for solving equations

# An example function whose solution
# is determined using Bisection Method.
# The function is x^3 - x^2 + 2
def func(x):
    return x * x * x - 2 * x * x + 10 * x - 20


# Derivative of the above function
# which is 3*x^x - 2*x
def derivFunc(x):
    return 3 * x * x + 4 * x + 10


# Function to find the root
def newtonRaphson(x):
    i = 0
    print(f"x_{i} = {x}")
    h = func(x) / derivFunc(x)
    while abs(h) >= 0.0001:
        i = i + 1
        h = func(x) / derivFunc(x)
# x(i+1) = x(i) - f(x) / f'(x)
        x = x - h
        print(f"x_{i} = {x}")
    print("The value of the root is : ", "%.4f" % x)


# Driver program to test above
x0 = 1  # Initial values assumed
newtonRaphson(x0)

# This code is contributed by "Sharad_Bhardwaj"
