"""
Write a program to calculate the best savings rate, as a function of your starting
salary. You should use bisection search to help you do this efficiently.
You should keep track of the number of steps it takes your bisections
search to finish. You should be able to reuse some of the code you wrote
for part B in this problem.
"""

starting_salary = float(input("Enter the starting salary: "))

total_cost = 1000000
portion_down_payment = total_cost * 0.25

semi_annual_raise = 0.07
annual_return_rate = 0.04

low = 0
high = 10000
steps = 0
found = False

while abs(high - low) > 1:
    steps += 1
    portion_saved = (high + low) // 2 / 10000

    current_savings = 0
    monthly_salary = starting_salary

    for month in range(1, 37):
        monthly_return = current_savings * (annual_return_rate / 12)
        current_savings += monthly_return + \
            (monthly_salary / 12 * portion_saved)

        if month % 6 == 0:
            monthly_salary += monthly_salary * semi_annual_raise

    if current_savings < portion_down_payment - 100:
        low = (high + low) // 2
    elif current_savings > portion_down_payment + 100:
        high = (high + low) // 2
    else:
        found = True
        break

if found:
    best_savings_rate = portion_saved
    print("Best savings rate: {:.4f}".format(best_savings_rate))
    print("Steps in bisection search: {}".format(steps))
else:
    print("It is not possible to pay the down payment in three years.")
