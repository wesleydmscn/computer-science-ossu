""" 
A Very Simple Program: Raising a number to a power and taking a logarithm

Assignment: 

Write a program that does the following in order:
1. Asks the user to enter a number “x”
2. Asks the user to enter a number “y”
3. Prints out number “x”, raised to the power “y”.
4. Prints out the log (base 2) of “x”.
"""
import math

number_x = int(input("Enter number x: "))
number_y = int(input("Enter number y: "))

print(number_x ** number_y)
print(math.log2(number_x))
