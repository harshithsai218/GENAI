# [PANDAS](https://colab.research.google.com/drive/1XJK0Tg1dKdSTExwQqmRKUPgn_K7kNa_P?usp=sharing)
## WHAT IS PANDAS?
- it is a open source library that works mainly with the labeled data
## WHY DO WE NEED TO USE PANDAS?
- fast , high performance, productive, and use to load and read the data
- flexiable reshaping of the data and pivoting the data, data visualization and groupby functionality 
- time series analysis 
## WHAT IS FUNCTION OF PANDAS
- Analyzing the data, cleaning, exploring, and manupulation the data
## WHAT IS DATA CLEANING?
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
- Dataframe is 2d-size, Heterogenous data with labelled axis (rows and columns), mutable
- columns also known as features, variables, fields, dimesions, attributes
- rows also known as records, values, index

### what is the application of dataframe?
1. works on data sets
2. analysis
3. dropping
4. processing
5. cleaning
6. join the multiple data
7. create excel, json and finary files..etc
8. compute mathematical and statistical operations
9. use group by function

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
```python
#step1:-read the data
df = pd.read_csv("/content/sample_data/california_housing_train.csv")
```
2. CHECK THE SIZE AND INDEX OF THE DATA FRAME (size = no of rows * no of columns)
```python
#step2:- check the size and index of the df
df.size  #size--> no of rows * no of columns
#index gives the range of index from start to end along with the step
df.index
```
3. read the column of your data
```python
#read the columns of your data
df.columns
```
4. check the number of rows and columns
```python
#check the number of rows and columns
df.shape
```
5. get the overall information of the dataframe?
```python
#get the overall information of the dataframe?
df.info()
```
```
OVERVIEW

This data is having 17000 rows and 9 columns

There no null values

for all the columns the data type is float
```
#### print the data types for above dataframe
```python
df.dtypes
```
#### How to describe  overall data according to staistics?
```python
df.describe()
```
#### print the last 5 rows for above df
```python
df.tail()  #by default df.tail can print the last 5 rows
```
#### check the null values and sum of the null numbers
```python 
df.isnull()  #returns the boolean expression of null values present or not
df.isnull().sum()
```
## COMMANDS
```python
pd.Series(name,index=['a','b'])
pd.DataFrame(name, index)
pd.read_csv("file path") #--> read the csv
df.head() #--> by default it read the 1st 5 rows
df.shape #---> read the total number of rows and columns
df.index #--> returns the range of indexes from start to end along with step
df.columns #--> read the columns of the data
df.info() #--> overall information of df
df.describe() #--> descriptive stats of dataframe
df.tail #--->  by default it reads last 5 rows of the df
df.isnull().sum() #--> gives the totral null values in the dataframe
```
---
# 03-06-2025
# Accessing the data
```python
import pandas as pd
df = pd.read_csv("/content/sample_data/california_housing_train.csv")
#read 1st 5 rows of the df
df.head()
#print the column names
df.columns
```
```
OUTPUT
Index(['longitude', 'latitude', 'housing_median_age', 'total_rooms',
       'total_bedrooms', 'population', 'households', 'median_income',
       'median_house_value'],
      dtype='object')
```
#### read and access the column 'total_bedrooms'
```python
df['total_bedrooms']
```
#### #read the first and last 5 rows 
```python
df['total_bedrooms'].head()
df['total_bedrooms'].tail()
```
#### print the 1st row value of column 'total_bedrooms'
```python
df['total_bedrooms'][0]
```
#### print the indexes---> 1545,12455,6500
```python
df['total_bedrooms'][100:200] 
df['total_bedrooms'][1545]
df['total_bedrooms'][12455]
df['total_bedrooms'][6500]
```
#### How can we access the multiple columns? 'total_rooms','total_bedrooms', 'population'
```python
df[['total_rooms','total_bedrooms', 'population']].head()
```
---
# loc and iloc
### loc
- Syntax
```python
df.loc[start:end:step]
```
#### print the entire forst row of my dataframe
```python
df.loc[0]
```
#### print the values if index rows from 100 to 105
```python
#df.loc[start:end]
df.loc[100:106]
```
#### read the rows with even and odd indexes up to the 100th row
```python
df.loc[0:100:2] #even index rows
df.loc[1:100:2]  #odd index rows
```
#### display even index position values of a particular column---> 'total_bedrooms'
```python
df.loc[0:100:2,'total_bedrooms']
df['total_bedrooms'].loc[0:20:2]
```
#### display even index position values of a specific  columns---> 'total_bedrooms','total_bedrooms', 'population'
```python
df[['total_rooms','total_bedrooms', 'population']].loc[0:20:2]
df.loc[0:20:2,['total_rooms','total_bedrooms', 'population']]
```
---
## Applying the conditions  for the columns
#### print the even values of the column total_bedrooms
```python
df[['total_bedrooms']] % 2==0
df.loc[df['total_bedrooms']%2==0]['total_bedrooms']
df_even = df[df['total_bedrooms']%2==0]['total_bedrooms']
df_even.head()
```
#### locate the rows in between
```python
df.loc[[6500,2500,7000]]
```
### iloc
- passes axis number of rows and columns
```python
df.columns
df.head()
```
```python
# SYNTAX
df.iloc[row_index[start:end:step],column_index[start:end:step]]
```
#### print the 1st 3 rows of following columns 'latitude', 'housing_median_age', 'total_rooms','total_bedrooms'
```python
df.iloc[0:3,1:5]
df.iloc[1,3]
df.iloc[3,6]
df.iloc[0:100:2,1:5]
```
##### what is the difference between the loc and iloc?
- loc supports the filtering where as i loc doesnot support filtering
- we can apply condition in loc and we cannot apply condition in i loc.
```python
df.iloc[df['total_bedrooms']%2==0]['total_bedrooms']
```

#### locate the rows of specific columns, 'population', 'households','housing_median_age' [for ex:- locate first 10 rows].
```python
df.loc[0:10,['population', 'households','housing_median_age']]
```

#### locate the rows of of indexes 545,789,543
```python
df.loc[[676,789,543]]
df.iloc[[545,789,543]]
```
#### i want see the value at 676 index of total bedrooms
```python
df.iloc[676,4]
```
#### find the unique values in the specific columns--> total_rooms
```python
df['total_rooms'].unique()
```
#### find the frequency of each value in the specific column
```python
df['housing_median_age'].value_counts()
```
#### find the duplicate data is present or not
```python
df.duplicated().sum()
```
#### drop the duplicates
```python
df.drop_duplicates(inplace=True)
```
# COMMANDS
```python 
df['column_name'] # access the single column
df[[col1,col2,col3...etc]] # access the multiple columns
df.loc[start:end:step] # locate particular row of data
df.iloc[row_index,col_index] # locate particular values from particular column
df['col_name'].unique() # find the unique values
df['col_name'].value_counts() # get the frequency of data points in specific column. 
df.duplicated().sum() # find the duplicate in df
df.drop_duplicates(inplace=True) # drop the duplicate data
```
---
# 04-06-2025
#### How to handle the missing data
```python
s=pd.Series(['sam',np.nan,'Tim'])
print(s)
s.isnull()
s.notnull()
```
#### how to drop null value
```python
s.dropna()
```
#### using Data Frames
```python
from numpy import nan as na
df = pd.DataFrame([[1,2,3],[4,na,6],[na,na,na]])
print(df)
```
#### delete only the which is have all the null values
```python
df.dropna(how='all')
```
#### Thresh (Threshold)
- Thresh is nothing but threshold limit for the null values. for ex:- if tresh is 2 it removes the null values less or equal to 2
```python
df.dropna(thresh=1,axis=1,inplace=True)
df
```
#### How to fill the null values with zero
```python
df = pd.DataFrame([[1,2,3],[4,na,5],[na,na,na]])
print(df) 
df.fillna(0)
```
```python
#iloc method
df.iloc[2,0]=10
df.iloc[2,1]=20
df.iloc[2,2]=30
df
```
```python
#fillna method
df.fillna({0:15,1:25,2:35})
```
## **ffill** method
- the use **"ffill"** to fill nan values in above df
- ffill fills the last value bfore nan values in the column is gooin to fill in NAN place
```python 
df.fillna(method = "ffill")
df.fillna(method = "ffill",limit=1)
```
### filling the data with mean values
```python
df.fillna(df.mean())
```

## Assessment
```python
df = pd.DataFrame([[1,2,3,4],[5,na,6,na],[7,8,na,na],[na,9,na,10],[11,na,na,12]])
print(df)
# fill the null values with zero
df.fillna(0)
# fill the null values with ffill method
df.fillna(method="ffill")
# fill the null values with mean
df.fillna(df.mean())
```
---
# COMMANDS
```python
df.isnull().sum()
df.dropna(how='all',axis=1 or 0,tresh=2,inplace=True)
df.fillna(value,method,limit)
```
---
# Combining and Merging of DataFrames
```python
d1 = pd.DataFrame(
    {"key":['a','b','c','c','d','e'],
     "num1":range(6)}
)
d2 = pd.DataFrame(
    {"key":['b','c','e','f'],
     "num2":range(4)
     }
)
print(d1)
print(d2)
# gets the data of matched data only else it is removed
pd.merge(d1,d2)
```
```
print(d1)
  key  num1
0   a     0
1   b     1
2   c     2
3   c     3
4   d     4
5   e     5
print(d2)
 key  num2
0   b     0
1   c     1
2   e     2
3   f     3
merged
key	num1	num2
0	b	1	0
1	c	2	1
2	c	3	1
3	e	5	2

```
#### left and right join
```python
pd.merge(d1,d2,how='left' )
pd.merge(d1,d2,how='right' )
```
```
left join
	key	num1	num2
0	a	0	NaN
1	b	1	0.0
2	c	2	1.0
3	c	3	1.0
4	d	4	NaN
5	e	5	2.0

right join
key	num1	num2
0	b	1.0	0
1	c	2.0	1
2	c	3.0	1
3	e	5.0	2
4	f	NaN	3
```
#### merge the dataframe based on common columns
```python
pd.merge(d1,d2,on='key')
```
```
	key	num1	num2
0	b	1	0
1	c	2	1
2	c	3	1
3	e	5	2
```
#### merge the data from both d1,d2
```python
pd.merge(d1,d2,how='outer')
```
```
key	num1	num2
0	a	0.0	NaN
1	b	1.0	0.0
2	c	2.0	1.0
3	c	3.0	1.0
4	d	4.0	NaN
5	e	5.0	2.0
6	f	NaN	3.0
```
#### spliting the data
```python
pieces = [df[:2],df[2:5],df[5:7]]
pieces
```
```
[  key  num1  num2
 0   a   0.0   NaN
 1   b   1.0   0.0,
   key  num1  num2
 2   c   2.0   1.0
 3   c   3.0   1.0
 4   d   4.0   NaN,
   key  num1  num2
 5   e   5.0   2.0
 6   f   NaN   3.0]
```
#### combining the data
```python
pd.concat(pieces)
```
```
	key	num1	num2
0	a	0.0	NaN
1	b	1.0	0.0
2	c	2.0	1.0
3	c	3.0	1.0
4	d	4.0	NaN
5	e	5.0	2.0
6	f	NaN	3.0
```
---
# 05/06/2025
## Pivoting
#### What is pivot table in pandas
- it is a tool to summarize and analyze the data
- **SYNTAX**
```python
pd.pivot_table(data,values,index,columns,aggfunc)
```
```python 
 # pivoting
data = {
  'student' : ['a','b','c','a','b','c'] ,
  'subjects' : ['maths','maths','maths','science','science','science'],
  'scores' : [85,90,95,80,70,88] ,
  'sem' : ['sem1','sem1','sem1','sem2','sem2','sem2']
}

df=pd.DataFrame(data)
df
pd.pivot_table(df,values='marks',index='student',columns='subjects',aggfunc='mean')
```
```
subjects  maths  science
student                 
a          85.0     80.0
b          90.0     70.0
c          95.0     88.0
```
##### how add the data into data frames
```python
a={
    'student' : ['q'] ,
  'subjects' : ['ssc'],
  'marks' : [85] 
}
x=pd.concat([df,pd.DataFrame(a)],ignore_index=True)
x
```
```
  student subjects  marks   sem
0       a    maths     85  sem1
1       b    maths     90  sem1
2       c    maths     95  sem1
3       a  science     80  sem2
4       b  science     70  sem2
5       c  science     88  sem2
6       q      ssc     85   NaN
```
---
##### how to fill the null values in the pivot table
- **SYNTAX**
```
pd.pivot_table(data,values,index,columns,aggfunc,fill_value)
```
```python
pd.pivot_table(x,values='marks',index='student',columns='subjects',aggfunc='mean',fill_value=df['marks'].mean())
```
---
# Groupby Functions
- this applicable with aggregate functions
1. min
2. max
3. sum
4. avg
5. count
6. etc
```python
# print the minimum marks of the student 
df.groupby('student')['marks'].min()
```
