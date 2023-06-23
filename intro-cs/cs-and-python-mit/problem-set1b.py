"""
Write a program to calculate how many months it will take you save up enough money
for a down payment. LIke before, assume that your investments earn a return of r = 0.04 (or 4%)
and the required down payment percentage is 0.25 (or 25%).  Have the user enter the following variables:

1. The starting annual salary (annual_salary)
2. The percentage of salary to be saved (portion_saved)
3. The cost of your dream home (total_cost)
4. The semi­annual salary raise (semi_annual_raise)
"""

annual_salary = float(input("Enter your annual salary: "))
portion_saved = float(
    input("Enter the percent of your salary to save, as a decimal: "))
total_cost = float(input("Enter the cost of your dream home: "))
semi_annual_raise = float(input("Enter the semi­annual raise, as a decimal: "))

portion_down_payment = 0.25
current_savings = 0
annual_return_rate = 0.04

number_months = 0

while current_savings < total_cost * portion_down_payment:
    monthly_salary = annual_salary / 12

    if number_months % 6 == 0 and number_months != 0:
        annual_salary += (annual_salary * semi_annual_raise)

    monthly_return = current_savings * (annual_return_rate / 12)
    current_savings += monthly_return + (monthly_salary * portion_saved)

    number_months += 1

print("Number of months: ", number_months)
