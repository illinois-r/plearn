import sympy
import prairielearn as pl
import random 

# Reference mathematical functions with sympy.fun()
# e.g. sympy.cos(x)

def generate(data):
    sympy.var('y b a m')
    x = (y - b) / a
    z = m * (sympy.cos(a))
    data['correct_answers']['x'] = pl.to_json(x)
