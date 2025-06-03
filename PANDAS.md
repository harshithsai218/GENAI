# PANDAS https://colab.research.google.com/drive/1XJK0Tg1dKdSTExwQqmRKUPgn_K7kNa_P?usp=sharing
## WHAT IS PANDAS?
- it is a open source library that works mainly with the labeled data
## WHY DO WE NEED TO USE PANDAS?
- fast , high performance, productive, and use to load and read the data
- flexiable reshaping of the data and pivoting the data, data visualization and groupby functionality 
- time series analysis 
## WHAT IS FUNCTION OF PANDAS
- Analyzing the data, cleaning, exploring, and manupulation the data
## WHAT IS DATA CLEANING?/
- Deleting irrelevent data, empty or null values, correction of data types, fill the null values
---
## Installation of Pandas
```
!pip install pandas
```
```python 
import pandas as pd
```
## HOW MANY DATA STRUCTURES DO WE HAVE IN PANDAS?
- There are 3 types : 
    - SERIES : they are nothing but 1D labeled arrays.
    - 2D data frame : 


### How can we build a series?
```python
a=np.array([1,2,3,4])
print(a)
sr = pd.Series(a)
# how do we change the labelles?
sr=pd.Series(a,index=['a','b','c','d'])
print(sr)
```

### Create a series from the dictionary?
```python
d={
    "name":"medha",
    "course":"DS",
    "Duration":"4"
}
print(d)
sr=pd.Series(d)
print(sr)
```

### How can we represent a series in pandas
```python
print(type(sr))
# ans - <class 'pandas.core.series.Series'>
```

### Create a series from tuple of fruits and give labels as 'a','b','c','d'.
### Create a series from list of fruits and give labels as 'a','b','c','d'.
###  We cannot create a series from sets .

---
### 2D - data frames :
```python
#2D-Data-Frame:
#Dataframe is 2d-size, Heterogenous data with labelled axis (rows and columns), mutable
#columns also known as features, variables, fields, dimesions, attributes
#rows also known as records, values, index
```
```python
#what is the application of dataframe?
#works on data sets
#analysis
#dropping
#processing
#cleaning
#join the multiple data
#create excel, json and finary files..etc
#compute mathematical and statistical operations
#use group by function
```
```python 
l=[1,2,3,4,5,6,7]
df = pd.DataFrame(l)
print(df)
a={'apple','mango','banana','grapes','pineapple'}
df=pd.DataFrame(a,index = ['a','b','c','d','e'])
print(df)
```
---
## Importing and Exporting the data
1. load the csv file using the pandas(csv - comma seperate values)
```python
df = pd.read_csv('/content/sample_data/california_housing_test.csv')
#package --> Module --> code library
print(df)
```
2. Read the csv file
```python
df.head(10)
```
3. Converting the csv to excel format and reading in pandas
```python 
df.to_excel('export.xlsx')
h=pd.read_excel('export.xlsx')
h.head()
```
4. Converting to json format and reading in pandas
```python
h.to_json('export.json')
j=pd.read_json('export.json')
j.head()
```
--- 
## DATA FRAME FUNCTIONS
1. READ THE DATA
2. CHECK THE SIZE AND INDEX OF THE DATA FRAME (size = no of rows * no of columns)
---
# 03-06-2025
# Accessing the data
