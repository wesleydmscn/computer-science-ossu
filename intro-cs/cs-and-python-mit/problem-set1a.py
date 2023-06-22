"""
Write a program to calculate how many months it will take you to save up enough money for a down
payment.

Your program should ask the user to enter the following variables:
1. The starting annual salary (annual_salary)
2. The portion of salary to be saved (portion_saved)
3. The cost of your dream home (total_cost)
"""

annual_salary = float(input("Enter your annual salary: "))
portion_saved = float(
    input("Enter the percent of your salary to save, as a decimal: "))
total_cost = float(input("Enter the cost of your dream home: "))

monthly_salary = annual_salary / 12
portion_down_payment = 0.25
current_savings = 0
annual_return_rate = 0.04

number_months = 0

while current_savings < total_cost * portion_down_payment:
    monthly_return = current_savings * (annual_return_rate / 12)
    current_savings += monthly_return + (monthly_salary * portion_saved)
    number_months += 1

print("Number of months: ", number_months)
