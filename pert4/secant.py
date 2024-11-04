def f(x):
    return x * x * x - 2 * x * x + 10 * x - 20
# Implementing Secant Method


def secant(x0, x1, e, N):
    print('\n\n*** SECANT METHOD IMPLEMENTATION ***')
    step = 1
    condition = True
    while condition:
        if f(x0) == f(x1):
            print('Divide by zero error!')
            break
        x2 = x0 - (x1-x0)*f(x0)/( f(x1) - f(x0) ) 
        print('x_2 = %0.6f and f(x_2) = %0.6f' % (x2, f(x2)))
        x0 = x1
        x1 = x2
        step = step + 1
        if step > N:
            print('Not Convergent!')
            break
        condition = abs(f(x2)) > e
    print('\n Required root is: %0.8f' % x2)


# Input Section
x0 = 1
x1 = 1.5
e = 0.000001
N = 100

# Converting x0 and e to float
x0 = float(x0)
x1 = float(x1)
e = float(e)

# Converting N to integer
N = int(N)


#Note: You can combine above three section like this
# x0 = float(input('Enter First Guess: '))
# x1 = float(input('Enter Second Guess: '))
# e = float(input('Tolerable Error: '))
# N = int(input('Maximum Step: '))

# Starting Secant Method
secant(x0,x1,e,N)
