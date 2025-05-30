# Numpy https://colab.research.google.com/drive/1fmTykli84INv8HPrW1_ufkU77dQI9cpo?usp=sharing

#### What is  Numpy?
- it is a core library for scientific computing in python.  
#### What is the central object in numpy?
- Numpy - arrays
#### what is a numpy?
- arrays are high performance multidimentional objects which is defined specially for mathematical operations.  
- arrays are ordered ,immutable and allow duplicate data
---
1. Dot Product/inner Product
2. matrix multiplication
3. element wise matrix multiplication
4. solving the linear system
5. inverse
6. determinant
7. random numbers
8. statistics
9. broadcasting methods
---
### Installation of Numpy
- python package manager  
- package-->modules-->libraries-->inbuild codes
```python
# for checking the numpy version
np.__version__
```
---
### TYPES OF DATA STRUCTURES IN NUMPY
1. 1D - Array : Arrays with zero column and specific rows(axis 0) 
2. 2D - Array : Arrays with both column(axis 1) and rows(axis 0) 
3. 3D - Array : also known as Multidimentional
---
#### Central Object in Numpy in Arrays
- Arrays are created from the existing data
- 1D - Array

```python
l=[1,2,3,4,5]
a=np,array(l)
print(a)
```
```python
a=np.array([1,2,3,4,5])
print(a)
print(type(a))
```
```python
# shape of array
a.shape
# type of the datatype in the array
a.dtype
# dimention of the array
a.ndim
# find the total number of elements present in the array
a.size
#len(a)
# find the memory size in bytes occupied by each element in array
a.itemsize
```
---
## ESSENTIAL METHODS TO CREATE AN ARRAY
---
#### create an array from tuple of numbers
```python
t = (1,2,3,4,5)
h=np.array(t)
print(h)
print(type(h))
```
---
#### create an array from dict of numbers
- we cannot create an array from the dict as the storing of elements are different (value:key)
---
#### create an array from set of numbers
- we cannot create an array from the set as it is a unordered where as numpy is ordered
---
## ESSENTIAL METHODS TO ACCESS AN ARRAY
```python
a=np.array([1,2,3,4,5])
print(a[0])
print(a[1:3])
print(a[::-1])
```
---
- Arrays are immutable , we can replace the data but we cannot add or remove the elements from the array.  
```python 
a[2]=4
print(a)
```
- how can we the new items in to the new items ? : we can add by creating a new variable .  
---
### Element Wise Maths Operation
```python
b=np.array([6,7,8,9,0])
print(a+b)
```
##### what is vector addition?
- when we apply addition on arrays of same length and dimentions --> is known as vector addition
##### what is broadcasting method
- adding a single element of an array with multipy element in another array of same dimentional is known as Broadcasting method.
---
### Difference between Array V/S List
```python
l=[1,2,3]
a=np.array(l)
l.append(4)
print(l)
print(dir(a))
b=np.array([5,6,7,8])
c=np.append(a,b)
print(c)
```
---
## MISD
- Multiple Input and Single Destination
--- 
## Find the square root of below arrays
```python
a=np.array([10,20,30,40])
print(np.sqrt(a))
```
---
## DOT PRODUCT
- it is a vector multiplication of elements and sum of the results
```python
a=np.array([1,3])
b=np.array([2,4])
dot = 0
for i in range(len(a)):
  dot = dot + a[i]*b[i]
print(dot)
dot=np.dot(a,b)
print(dot)
c=a*b
d=np.sum(c)
print(d)
e=a.dot(b)
print(e)
f=a@b
print(f)
```
#### Speed test between arrays and list
```python
# import a time calculator to see the different
from timeit import default_timer as timer
a=np.random.randn(10000)
b=np.random.randn(10000)
#convert arrays into the list
c=list(a) 
d=list(b) 
def dot1():
  dot=0
  for i in range(len(c)):
    dot += c[i]*d[i]
  return dot
def dot2():
  return np.dot(a,b)
#timer
start = timer()
for t in range(1000):
  dot1()
end=timer()
t1=end-start

start = timer()
for t in range(1000):
  dot2()
end=timer()
t2=end-start
print(t1)
print(t2)
print(t1/t2)
```
---
### 28-05-2025
# 2D ARRAY'S
#### How to create a 2D array
```python
a=np.array([[1,2,3,4],[5,6,7,8]])
print(a)
a.shape
```
### How can we access the elements from 2D array
```python
#how to access elements from the 2D Array
#[row_index,column_index]
print(a[0])
#how to access the value from particular row and column
print(a[1,1])
print(a[0,2])
```
### How can i print first column value from below array
```python
a=np.array([[1,2,3,4],[5,6,7,8],[9,10,11,12]])
print(a)
print(a[:,2])
print(a[1,:])
print()
```
---
### TRANSPOSE
- It converts rows into columns and viceversa.
```python
a=np.array([[1,2,3,4],[5,6,7,8],[9,10,11,12]])
print(a)
print(a.T)
```
### Matrix Multiplication
```python
#Matrix Multiplication
a=np.array([[1,2],[3,4]])
b=np.array([[5,6],[7,8]])
print(a.dot(b))
```
### Inverse of a matrix
```python
d=np.array([[1,2,3,4],[5,6,7,8]])
x=np.linalg.inv(a)
print(x)
```
### Diagonal of a matrix
```python
f=np.diag(d)
print(f)
```
### Accessing two columns at a time
```python
a=np.array([[1,2,3,4],[5,6,7,8],[9,10,11,12]])
print(a)
print(a[:,1:3])
print(a[0:3,1:3])
print(a[:,-1:]) #prints last column all the values 
```
### Boolean Indexing
```python
a=np.array([[1,2],[3,4],[5,6]])
print(a)
#print numbers which are more than 2 
print(a>2)
print(a[a>2])
```
### How to apply conditions in an Array
```python
np.where(condition,True,False)
```
```python
c=np.where(a>2,a,-1)
print(c)
```
### How to compute the indexes where the condition is true
```python
np.argwhere()
```
```python
k=np.argwhere(a>2)
print(k)
```
```python
a=np.array([10,20,30,19,3,12,41,53,12,67,44,24])
eve=np.argwhere(a%2==0).flatten() # flatten prints the output in single line
print(eve)
```
---
## Reshaping of an array
```python
# create a range of array upto 9
a=np.arange(1,10)
print(a)
b=a.reshape(3,3)
print(b)
```
## New Axis
- is used to create a axis in the data
```python
d=a[np.newaxis,:]
print(d)
print(d.shape)
print("-----------")
e=a[:,np.newaxis]
print(e)
print(e.shape)
```
# COMMANDS
```python
np.array([])
np.array([[]])
np.shape
np.dim
np.size
np.dtype
np.dtype
np.itemsize
np.dot(array1,array2)
np.sqrt()
np.linalg.inv(array1)
np.where(condition,true,false)
np.argwhere(condition)
np.arange(start,end)
np.reshape(row,column)
np.newaxis
np.diag(array)
Transpose(T)
```
---
# 29-05-2025
---
 ### Copying of an Array
 ```python
np.copy # if you want to make any changes in the new array it wont impact on the old array
```
```python
a=np.array([1,2,3,4])
b=a.copy()
b[0]=77
print(a)
print(b)
```
### Convertion of data type of an array
```python
# convert an array of int64 to int32 -> dtype=np.int32
a=np.array([1,2,3,4],dtype='int32')
print(a.dtype)
a=np.array([1.5,1.4,2.3,1.2],dtype=np.int32)
print(a)
print(a.dtype)
```
### Generating Array's
```python
# generate an array of zeros with 2 rows and 3 columns
a=np.zeros((2,3))
print(a)
a=np.zeros((3))
print(a)
```
```python 
# generating an array of specific nmber with particular rows and columns
a=np.full((3,3),5)
print(a)
```
### Identity Matrix
```python 
#generate an identity martix
e=np.eye(3)
print(e)
f=np.identity(3)
print(f)
```
```python 
# generate a range of numbers upto 9
i=np.arange(1,11)
print(i)
```
### linspace
```python
#linspace : splits the data into n equal parts
j=np.linspace(0,10,5)
print(j)
# np.linspace(start,end,no of partions)
```
### Generating Random Numbers
```python
### Generating Random Numbers those are uniformly distributed from 0-1
a=np.random.random((3,2))
print(a)
```
### Normally distribution or Gausian distribution
```python
# generate an array which is normally distributed or gausian distribution
b=np.random.randn(3,2)
print(b)
```
#### how to check it is normally distributed
```python
#generate an array of random numbers with 1000 and find the mean variance and standard deviation mean=~0 std=~1 var=~1
c=np.random.randn(1000)
print(c)
print(c.mean(),c.std(),c.var())
```
```python 
#generate an array of integers from 3,10 with 2 ros anf 3 columns
a=np.random.randint(5,10,size=(2,3))
print(a)
```
```python
#generate an array of numbers up to 6 randomly with size of 10
e = np.random.choice(7,size = 10)
print(e)
```
# COMMANDS
```python
np.concatenate((arr1,arr1).axis=None,0,1)
hp.hstack((arr1,arr2))
np.vstack((arr1,arr2))
np.copy()
change dtype of int64 and flot64--> np.array(l,dtype=np.int32)
np.zeros((row,col))
np.ones((row,col))
np.full(row,col,number)
np.eye(N)
np.linspace(start,end,no.of partitions)
uniform data-->np.random.random((row,col))
normal distribution-->np.random.randn(row,col)
how can you say a data is randomly distributed--> mean is zero, varience is equal to 1 and std is equal to 1
random_numbers_with specific size--> np.random.choice(range of numbers,size=number)
genrate range of random integers--> np.random.randint(start,end, size=(row,col))
```