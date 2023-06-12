# In-Class Questions
Lectures 6, 10, 11, and 12 have no associated questions.

## Topics

- [In-Class Questions](#in-class-questions)
  - [Topics](#topics)
    - [What is computation?](#what-is-computation)
    - [Branching and Iteration](#branching-and-iteration)
    - [String Manipulation, Guess and check, Approximations, Bisection](#string-manipulation-guess-and-check-approximations-bisection)

### What is computation?

**1.** Shell vs. Editor - What’s printed?
```py
type(5)
print(3.0-1)
```

- [ ] int 
- [x] 2.0 
- [ ] int then 2.0 
- [ ] nothing

**2.** Python vs. Math - Which is allowed in Python?

- [ ] x + y = 2 
- [ ] x\*x = 2 
- [ ] 2 = x 
- [x] xy = 2 
- [ ] None of the Above 

**3.** Bindings - What’s printed?
```py
usa_gold = 46
uk_gold = 27
romania_gold = 1

total_gold = usa_gold + uk_gold + romania_gold
print(total_gold)

romania_gold += 1
print(total_gold)
```

- [x] 74 then 74 
- [ ] 74 then 75
- [ ] 74
- [ ] 75

### Branching and Iteration

**1.** Strings - What is the value of variable `u` from the code below?
```py
once = "umbr"
repeat = "ella"
u = once + (repeat + " ") * 4
```

- [x] umbrella ella ella ella
- [ ] umbrellaellaellaella
- [ ] umbrella
- [ ] umbrella4

**2.** Comparisons - What does the code below print?
```py
pset_time = 15
sleep_time = 8
print(sleep_time > pset_time)
derive = True
drink = False
both = drink and derive
print(both)
```

- [x] False then False
- [ ] False then True
- [ ] True then False
- [ ] True then True 

**3.** Branching - What’s printed when x = 0 and y = 5?
```py
x = float(input("Enter a number for x: "))
y = float(input("Enter a number for y: "))
if x == y:
 if y != 0:
 print("x / y is", x/y)
elif x < y:
 print("x is smaller")
else:
 print("y is smaller") 
```

- [x] x is smaller
- [ ] y is smaller
- [ ] x / y is 0.0

**4.** While Loops - In the code below from Lecture 2, what is printed when you type “Right”?
```py
n = input("You're in the Lost Forest. Go left or right? ")
while n == "right":
 n = input("You're in the Lost Forest. Go left or right? ")
print("You got out of the Lost Forest!")
```

- [ ] You're in the Lost Forest. Go left or right?
- [x] You got out of the Lost Forest!

**5.** For Loops - What is printed when the below code is run?
```py
mysum = 0
for i in range(5, 11, 2):
 mysum += i
 if mysum == 5:
  break
  mysum += 1
print(mysum)
```

- [x] 5
- [ ] 6
- [ ] 21
- [ ] 24

### String Manipulation, Guess and check, Approximations, Bisection

**1.** String Manipulations - What does the code below print?
```py
s = "6.00 is 6.0001 and 6.0002"
new_str = ""
new_str += s[-1]
new_str += s[0]
new_str += s[4::30] 
new_str += s[13:10:-1]
print(new_str)
```

- [ ] 260000 
- [ ] 26100
- [x] 26 100
- [ ] nothing, it will give an error
- [ ] 6.00 is 6.0001 and 6.0002

**2.** For Loops with Strings - How many times will the code below print “common letter”?
```py
s1 = "mit u rock"
s2 = "i rule mit"
if len(s1) == len(s2):
 for char1 in s1:
 for char2 in s2:
 if char1 == char2:
 print("common letter")
 break
```

- [ ] 0
- [ ] 2
- [ ] 4
- [ ] 5
- [ ] 6
- [x] 7
- [ ] 8
- [ ] 10 