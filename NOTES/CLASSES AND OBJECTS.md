# CLASSES AND OBJECTS

### How can we create a class?
- steps
1. create a class
```python
class customer():
    pass
```
2. create a object
```python
c1 = customer()
c2 = customer()
```
3. create class attributes
```python
class customer():
    Bank_Name="hfc bank"
    IFSC='hfc0001"
    Branch="Ameerpet"
    City="Hyderabad"
    State="TG"

c1 = customer()
c2 = customer()
```
4. access the class attributes
```python
class customer():
    Bank_Name="hfc bank"
    IFSC='hfc0001"
    Branch="Ameerpet"
    City="Hyderabad"
    State="TG"

c1 = customer()
c2 = customer()

print(c1.IFSC)
print(c1.Bank_Name)
```
#### NOTE : before we are creating the object attribute we need to initailize the object attribute inside the class
5. initialize the object attribute inside the class 
```python
class customer():
    Bank_Name="hfc bank"
    IFSC='hfc0001"
    Branch="Ameerpet"
    City="Hyderabad"
    State="TG"
    def __init__(self,Name,Age,Acc_No,Initial_Bal,Mob):
        self.Name = Name
        self.Age = Age
        self.Acc_No = Acc_No
        self.Initial_Bal = Initial_Bal
        self.Mob = Mob

c1 = customer('python',35,1234567890,10000,1234567890)
c2 = customer('java',301234567891,10001,1234567891)


print(c1.IFSC)
print(c1.Bank_Name)
```
6. access the object attributes
```python
class customer():
    Bank_Name="hfc bank"
    IFSC='hfc0001'
    Branch="Ameerpet"
    City="Hyderabad"
    State="TG"
    def __init__(self,Name,Age,Acc_No,Initial_Bal,Mob):
        self.Name = Name
        self.Age = Age
        self.Acc_No = Acc_No
        self.Initial_Bal = Initial_Bal
        self.Mob = Mob

c1 = customer('python',35,1234567890,10000,1234567890)
c2 = customer('java',301234567891,10001,1234567891)


print(c1.IFSC)
print(c1.Bank_Name)

print(c2.Initial_Bal)
print(c1.Acc_No)
```
#### what is _main_?
- it is the default file from where the class is coming from 
#### what is a method?
- are nothing but a block of codes / function where we can create inside the class
7. create methods
```python
class customer():
    Bank_Name="hfc bank"
    IFSC='hfc0001'
    Branch="Ameerpet"
    City="Hyderabad"
    State="TG"
    def __init__(self,Name,Age,Acc_No,Initial_Bal,Mob):
        self.Name = Name
        self.Age = Age
        self.Acc_No = Acc_No
        self.Initial_Bal = Initial_Bal
        self.Mob = Mob
def welcome(self):
    print(f'Hello {self.Name} welcome to {self.Bank_Name},{self.Branch} Branch,{self.City} City')


c1 = customer('python',35,1234567890,10000,1234567890)
c2 = customer('java',301234567891,10001,1234567891)


print(c1.IFSC)
print(c1.Bank_Name)

print(c2.Initial_Bal)
print(c1.Acc_No)
```
8. access the methods
```python
class customer():
    Bank_Name="hfc bank"
    IFSC='hfc0001'
    Branch="Ameerpet"
    City="Hyderabad"
    State="TG"
    def __init__(self,Name,Age,Acc_No,Initial_Bal,Mob):
        self.Name = Name
        self.Age = Age
        self.Acc_No = Acc_No
        self.Initial_Bal = Initial_Bal
        self.Mob = Mob
    def welcome(self):
        print(f'Hello {self.Name} welcome to {self.Bank_Name},{self.Branch} Branch,{self.City} City')
    def check_bal(self):
        print(f'Hello {self.Name} welcome to {self.Bank_Name},Your balance:{self.Initial_Bal}')
    def deposit(self,amount):
        self.Initial_Bal += amount
        print(f'your acc has credited with {amount},updated balance : {self.Initial_Bal}')
    def withdraw(self,amount):
        if amount <= self.Initial_Bal:
            self.Initial_Bal-=amount
            print(f'withdrawn : {amount}, current_bal : {self.Initial_Bal}')
        else:
          print(f'insufficient bal, current_bal:{self.Initial_Bal}')
c1 = customer('python',35,1234567890,10000,1234567890)
c2 = customer('java',30,1234567891,10001,1234567891)


print(c1.IFSC)
print(c1.Bank_Name)

print(c2.Initial_Bal)
print(c1.Acc_No)
c1.welcome()
c2.check_bal()
c1.deposit(10000)
c2.withdraw(5000)
c2.withdraw(12000)

```

# FILE HANDLING
- HANDLING OTHER FILES EXCEPT PYHON
- use --> open()
#### There are four mode to handle the file
1. read -r
2. write or over write -w
3. append -a
4. execution mode -x

### X - Mode : To create a file

```python
f=open("trial.txt",'x')
print(f)
```
### W - Mode write or overwrite
```python
f=open("trial.txt",'w')
f.write("hello good evening")
f.close()
```

### A - Append : to add the data without changing the existing data
```python
f=open("trial.txt",'a')
f.write(",this is append")
f.close()
```

### R - Read
```python
f=open("trial.txt",'r')
f.close()
f.read()
```

# Pickling
### What is Pickle?
- the proocess of serialization and de-serialization is known as pickling .
- 2D is called as a Line data and 1D is called as the point data (.) .
- The process of converting  2D tabular data into 1D data is known as serialization .
- The process of converting a 1D data into 2D tabular data is known as serialization .
- to use pickling import a package called pickle .

## serialization : wb -write binary
```python
import pickle

d={
    'name':'ths',
    'age' : 21
}
print(d)
print(type(d))

with open('example_pickle','wb') as file:
    pickle.dump(d,file)
    print("success")
```

## deserialization : rb -reading binary
```python
import pickle

d={
    'name':'ths',
    'age' : 21
}
print(d)
print(type(d))

with open('example_pickle','rb') as file:
    ld=pickle.load(file)
    print("ld")
```

---
## Iterators
#### What is iterators?
- They are used to break the large data into tiny chuncks
``` python
fruits=['apple','banana','grapes',"pineapple",'orange']
for i in fruits:
    print(i)
```

#### How iterator can be build ?
- iterators can be build on two protocols:
```
1. __iter__
2. __next__
```
```python
i = iter(fruits)
print(next(i))
```
---

#### REGULAR EXPRESSTION
#### WHAT IS RegEx?
- it is used to form the search patterns in the string.
``` 
1. findall() ->returns a list of matched item
2. search() ->returns the index position of matched item
3. split() ->split data at matched string and return list
4. sub() ->replace the old string with new string
```

```python
txt = 'the rain in hyd,rain'
import re
print(re.search('rain',txt))
```
```
/^[a-zA-Z][a-zA-Z0-9\.-]+@[a-zA-Z].[a-z]{2,4}.[a-z]{2,4}?$/
```