# In-Class Questions
Lectures 6, 10, 11, and 12 have no associated questions.

## Topics

- [In-Class Questions](#in-class-questions)
  - [Topics](#topics)
    - [What is computation?](#what-is-computation)
    - [Branching and Iteration](#branching-and-iteration)
    - [String Manipulation, Guess and check, Approximations, Bisection](#string-manipulation-guess-and-check-approximations-bisection)
    - [Decomposition, Abstraction, and Functions](#decomposition-abstraction-and-functions)
    - [Tuples, Lists, Aliasing, Mutability, and Cloning](#tuples-lists-aliasing-mutability-and-cloning)
    - [Testing, Debugging, Exceptions, and Assertions](#testing-debugging-exceptions-and-assertions)
    - [Object Oriented Programming](#object-oriented-programming)
    - [Python Classes and Inheritance](#python-classes-and-inheritance)

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

### Decomposition, Abstraction, and Functions

**1.** Function Calls - How many total lines of output will show up if you run the code below?
```py
def add(x, y):
 return x+y

def mult(x, y):
 print(x*y)

add(1,2)
print(add(2,3))
mult(3,4)
print(mult(4,5))
```

- [ ] 0
- [ ] 2
- [x] 4
- [ ] 5

**2.** Functions as Arguments - What does the code below print?
```py
def sq(func, x):
 y = x**2
 return func(y)

def f(x):
 return x**2

calc = sq(f, 2)
print(calc)
```

- [ ] 4
- [ ] 8
- [x] 16
- [ ] nothing, it will show an error

### Tuples, Lists, Aliasing, Mutability, and Cloning

**1.** Tuples - Examine the code below. What does `always_sunny(('cloudy'), ('cold',))` evaluate to?
```py
def always_sunny(t1, t2):
 """ t1, t2 are non empty """
 sun = ("sunny","sun")
 first = t1[0] + t2[0]
 return (sun[0], first)
```

- [ ] ('sunny', 'cc')
- [x] ('sunny', 'ccold')
- [ ] ('sunny', 'cloudycold')

**2.** Simple Lists - What is the value of L after you run the code below?
```py
L = ["life", "answer", 42, 0]
for thing in L:
 if thing == 0:
  L[thing] = "universe"
 elif thing == 42:
  L[1] = "everything"
```

- [ ] ["life", "answer", 42, 0]
- [ ] ["universe", "answer", 42, 0]
- [x] ["universe", "everything", 42, 0]
- [ ] ["life", "everything", 42, 0]
 
**3.** List Operations - What is the value of L3 after you execute all the operations in the code below?
```py
L1 = ['re']
L2 = ['mi']
L3 = ['do']
L4 = L1 + L2
L3.extend(L4)
L3.sort()
del(L3[0])
L3.append(['fa','la'])
```

- [x] ['mi', 're', ['fa', 'la']]
- [ ] ['mi', 're', 'fa', 'la']
- [ ] ['re', 'mi', ['fa', 'la']]
- [ ] ['do', 'mi', ['fa', 'la']]

**4.** List Aliasing/Mutation - What is the value of brunch after you execute all the operations in the code below?
```py
L1 = ["bacon", "eggs"]
L2 = ["toast", "jam"]
brunch = L1
L1.append("juice")
brunch.extend(L2)
```

- [ ] ['bacon', 'eggs', 'toast', 'jam']
- [x] ['bacon', 'eggs', 'juice', 'toast', 'jam']
- [ ] ['bacon', 'eggs', 'juice', ['toast', 'jam']]
- [ ] ['bacon', 'eggs', ['toast', 'jam']]

### Testing, Debugging, Exceptions, and Assertions

**1.** Black Box and Glass Box Testing - With the below implementation, is the test set “n = 4 | n = -4 | n = 5” path complete?
```py
def is_even(n):
 """ 
 Returns True if a number is even
 and False if not 
 """
 if n > 0 and n % 2 == 0:
 return True
 elif n < 0 and n % 2 == 0:
 return True
 else: 
 return False
```

- [x] Yes
- [ ] No

With the above implementation, which value for n is incorrectly labeled by is_even?

- [ ] n is very large (and positive) 
- [ ] n is very small (and negative)   
- [x] n is 0

**2.** Errors - Below is a piece of code and an error shown when running it. What is the problem?
```py
L = 3
for i in range(len(L)):
 print(i)

ERROR MESSAGE:

 File "C:/Users/Ana/.spyder2-py3/temp.py", line 2, in 
 for i in range(len(L)):

TypeError: object of type 'int' has no len()
```

- [ ] You are not allowed to name an integer with the variable name L
- [ ] range is not allowed to have an expression inside its parentheses
- [x] You are not allowed to call len on an integer
- [ ] You are not allowed to print the loop variable i 

**3.** Exceptions - If the user enters “twenty” in the code below what does the program do?
```py
try:
 n = int(input("How old are you? "))
 percent = round(n*100/80, 1)
 print("You've gone through", percent, "% of your life!")
except ValueError:
 print("Oops, must enter a number.")
except ZeroDivisionError:
 print("Division by zero.")
except:
 print("Something went very wrong.")
```

- [ ] prints "You've gone through 25.0 % of your life!" 
- [x] prints "Oops, must enter a number."

If the user enters “0” in the code above what does the program do?

- [x] prints "You've gone through 0.0 % of your life!"
- [ ] prints "Division by zero."

### Object Oriented Programming

**1.** Class Definition - Which of the following is a good and valid definition for a class representing a car?

- [ ] def class Car(object):
- [x] class Car(object):
- [ ] def Car(object):
- [ ] class A(object)

**2.** Class Instance - Using the class definition below, which line creates a new Car object with 4 wheels and 2 doors?
```py
class Car(object):
 def __init__(self, w, d):
  self.wheels = w
  self.doors = d
  self.color = ""
```

- [ ] Car(mycar, 4, 2)
- [ ] mycar = Car(4, 2, "white")
- [x] mycar = Car(4, 2)
- [ ] mycar = Car(2, 4)

**3.** Methods - Which of the following methods changes the color of the car, based on the definition below?
```py
class Car(object):
 def __init__(self, w, d):
  self.wheels = w
  self.doors = d
  self.color = ""
```

- [ ] def paint(c): color = c
- [ ] def paint(self, c): color = c
- [ ] def paint(c): self.c = c
- [x] def paint(self, c): self.color = c

**4.** Method Call - You create a car with mycar = Car(4, 2). Which is a line of code to change the color of mycar to “red”?
```py
class Car(object):
 def __init__(self, w, d):
  self.wheels = w
  self.doors = d
  self.color = ""
  def paint(self, c):
   self.color = c
```

- [ ] Car.paint("red")
- [ ] mycar.paint(red) 
- [x] mycar.paint("red")
- [ ] mycar.paint(Car, "red")

**5.** Special Methods - With the code below, what does the line print(mycar == yourcar) print?
```py
class Car(object):
 def __init__(self, w, d):
  self.wheels = w
  self.doors = d
  self.color = ""
 def paint(self, c):
  self.color = c
 def __eq__(self, other):
  if self.wheels == other.wheels and \
  self.color == other.color and \
  self.doors == other.doors:
   return True
  else:
   return False

mycar = Car(4, 2)
mycar.paint("red")
yourcar = Car(4,2)
print(mycar == yourcar)
```

- [ ] True
- [x] False
- [ ] An error

### Python Classes and Inheritance

**1.** Getters and Setters - Which of the below is a getter method for the number of wheels?
```py
----------------------------------
----------- Given ------------
----------------------------------
class Car(object):
 def __init__(self, w, d):
 self.wheels = w
 self.doors = d
 self.color = ""
----------------------------------

(A)    def get_wheels():
 return wheels

(B)    def get_wheels():
 return self.wheels

(C)    def get_wheels(self):
 return wheels

(D)    def get_wheels(self):
 return self.wheels
```

- [ ] def get_wheels():
- [ ] def get_wheels():
- [ ] def get_wheels(self):
- [x] def get_wheels(self):

**2.** Subclass - Whate line could replace ____blank____ to create a class that inherets from Animal in the code below?
```py
____blank____
 def speak(self):
  print("ruff ruff")

(line1) d = Dog(7)
(line2) d.set_name("Ruffles")
(line3) d.speak()
```

- [x] class Dog(Animal): 
- [ ] class Animal(Dog): 
- [ ] class Dog(object)

With this definition of Dog, you run a program with line1, line2, and line3 above. What happens? Refer to the lecture slides for the code making up the “Animal” class.

- [ ] Error on (line1) because Dog does not have an \_\_init\_\_ 
- [ ] Uses the \_\_init\_\_ from Animal, but then an error (line2) because Dog does not have a set\_name method. 
- [ ] Uses the \_\_init\_\_ and set\_name from Animal, but then an error (line3) because all methods must return something. 
- [x] Runs, creates a Dog object with age=7 and name="Ruffles", and prints "ruff ruff" 