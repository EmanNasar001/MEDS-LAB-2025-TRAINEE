# -*- coding: utf-8 -*-
"""
Created on Mon Jun  2 20:07:28 2025

@author: DELL
"""

#exponential func
def fact(z):
    if z<=1:
        return 1
    else:
        return z* fact(z-1)
def exp(y):
    n=50
    exp=0
    for i in range (n+1):       
        m=(y**i)/fact(i)
        exp=m+exp
    return exp
test= exp(2)
#test
import math
test1=math.exp(2)
print(round(test,9)==round(test1,9))