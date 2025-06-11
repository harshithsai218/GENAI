# FUNCTIONS

## WHAT IS FUNCTION?
- A BLOCK OF CODE WHIVH CAN BE EXECUTED WHEN IT IS CALLED

## KWARGS and ARGS

- I DONT KNOW HOW MANY PARAMETERS DO I NEED TO PASS, THEN WHAT WE HAVE TO DO?

```python
def details(**name):
    print(name)
details(name='hello',Age=30,no=1234567890)
```
- I DONT KNOW HOW MANY ARGUMENTS I EED TO PASS



```python
def skills(*names):
    print(names)
skills('python','pandas','numpy','ml','pyspark')
```

### ** -> Kwargs 
1.  Keyword arbitary arguments  
2.  When we fdont know how many parameters we need to pass we use kwargs
3.  The default data types of kwargs is dictionary

### * -> ARGS
1. Keyword arbitary arguments  
2. When we dont know how many arguments we need to pass we use ARGS
3. The default data types of kwargs is tuple

---

## Return Keyword

when we is to return the funstion with print()  
return key word is similar to print()
    

```python
#write a function to print sum of arguments?
def sum_all(*args):
    return sum(args)

print(sum_all(1,2,3,4,5,6,7,8,9,9))

# 54
```

## what is list comprehension

- LC offers smaller line of code where a new list can be created from the existing list 
```python 
fruits=['apple','banana','grapes',"pineapple",'orange']
new=[i for i in fruits if 'i' in i]
print(new)
```



#20/5/2025

- Print the above numbers in list to the power of 2

## What is lambda function ?
- it is a anonymus function where it takes many arguments and single expresstion.  

## how to create a lamda function
- by assiging to a vkwarariable 
#### syntax

- for single value
```python 
a= lambda x: x+10
print(a[5])
```

- for multiple values
```python 
a= lambda x,y,z : x+y+z
print(a(4,5,6))
```

## NOTE 
- funtions are the first class objects.
- what is first class objects : coz a function can act like argument to the another function.
- lambda is more powerful when we use inside another function.
- WHEN WE NEED TO USE THE LAMBDA FUNCTION
---
- write a program to build a calculator of exponential 1,2,3,4, sqrt 
```python
def power(n):
    return lambda a:a**n
sq=power(2)
cb=power(3)
sqrt=power(0.5)
print(sq(3))
print(cb(3))
print(sqrt(4))
    
```

# MAP FUNCTIONS
#### WHAT IS map()?
- it takes a function as an argument and run it over each every data point in iterables 

#### Syntax
```python
map(function,iterable_name)
```

#### Note 
- before printing the output by map() we need to decide or choose whether print O/P in list ,tuple or set

#### when should we use the maps?
- if there is more user i/p then we use map()

- how can we print the entire numbers into double 10,20,30,40,50? in tuple

#### what is a filter function 
- it also takes funtion as an argument and run it over each elements in iterable and prints the output of condition satisfied

##### syntax
```python
dtype(filter(function , iterable_name))
```
---
#### GLOBAL VARIABLE AND LOCAL VARIABLES

- GLOBAL VARIABLE : created outside the function
- LOCAL VARIABLE : created insife the function

- convert the local variable into global variable
file handling using python  
classes and objects (OOPs)  


## what are attributes or how many types of attributes do we have in python
- there are two types of attribute 
1. class attribute : sharable or common attributes
2. object attributes : unsharable attributes or specific for particular object

## 4 pillars of OOPs
1. polymorphism
2. encapsulation
3. abstraction
4. inheritance