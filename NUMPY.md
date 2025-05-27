# Numpy 

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