# -*- coding: utf-8 -*-
"""
Created on Mon Jun  2 20:06:28 2025

@author: DELL
"""
#returns integer
def sqrt(x):
    if x<0:
        print('Sqrt of negative values is not allowed')
    if x<2:
        return x
        
    left, right = 0, x
    solution = 0
    while left <= right:
        mid = (left + right) // 2
        if mid * mid > x:
            right = mid - 1
        elif mid * mid < x:
            solution = mid
            left = mid + 1
        else:
            return mid
    return solution
x=sqrt(9)
print(x)
#%%
#returns floating value
def sqrt(x):
    if x < 0:
        print('Sqrt of negative values is not allowed')
        return None  
    
    if x < 2:  
        return x
    
    left, right = 0.0, float(x)
    
    while right - left > 1e-3:  
        mid = (left + right) / 2  
        if mid * mid > x:
            right = mid  
        else:
            left = mid
    
    return  round(left,3)

x = sqrt(7)
print(x)