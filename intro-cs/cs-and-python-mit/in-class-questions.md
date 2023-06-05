# In-Class Questions
Lectures 6, 10, 11, and 12 have no associated questions.

## Topics

1. [What is computation?](#what-is-computation)
2. [Branching and Iteration](#topics)	
3. [String Manipulation, Guess and check, Approximations, Bisection](#topics)	
4. [Decomposition, Abstractions, Functions](#topics)	
5. [Tuples, Lists, Aliasing, Mutability, Cloning](#topics)	
6. [Testing, Debugging, Exceptions, Assertions](#topics)	
7. [Object Oriented Programming](#topics)	
8. [Python Classes and Inheritance](#topics)	

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