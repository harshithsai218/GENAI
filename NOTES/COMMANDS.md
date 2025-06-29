# [PYTHON FIRST CLASS](https://colab.research.google.com/drive/1QDQZQEwXNC9AFFQlpIqZwBh59WuU8dzu?usp=sharing)

# PANDAS
- [Sirs'Colab](https://colab.research.google.com/drive/1XJK0Tg1dKdSTExwQqmRKUPgn_K7kNa_P?usp=sharing)
```python
# 02/06/2025
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
#03/06/2025
df['column_name'] # access the single column
df[[col1,col2,col3...etc]] # access the multiple columns
df.loc[start:end:step] # locate particular row of data
df.iloc[row_index,col_index] # locate particular values from particular column
df['col_name'].unique() # find the unique values
df['col_name'].value_counts() # get the frequency of data points in specific column. 
df.duplicated().sum() # find the duplicate in df
df.drop_duplicates(inplace=True) # drop the duplicate data
#04/06/2025
df.isnull().sum() # find the sum of all the null values in the data frame
df.dropna(how='all',axis=1 or 0,tresh=2,inplace=True) # to drop the null value , how - limits the when all the row values are null thresh -Thresh is nothing but threshold limit for the null values. for ex:- if tresh is 2 it removes the null values less or equal to 2 and inplace true will make the changes in the data frame
df.fillna(value,method,limit) # filling the null values with specific values
```
---
# NUMPY
- [Sirs_Colab](https://colab.research.google.com/drive/1fmTykli84INv8HPrW1_ufkU77dQI9cpo?usp=sharing)
```python
np.array([])
np.array([[]])
np.shape
np.ndim
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
###--------------------------------------------###
np.concatenate((arr1,arr1).axis=None,0,1)
hp.hstack((arr1,arr2))
np.vstack((arr1,arr2))
np.copy()
np.array(l,dtype=np.int32) # change dtype of int64 and flot64
np.zeros((row,col))
np.ones((row,col))
np.full(row,col,number)
np.eye(N)
np.linspace(start,end,no.of partitions)
np.random.random((row,col)) # uniform data
np.random.randn(row,col) # normal distribution or gaussian distribution
mean is zero, varience is equal to 1 and std is equal to 1 # how can you say a data is randomly distributed
np.random.choice(range of numbers,size=number) # random_numbers_with specific size
np.random.randint(start,end, size=(row,col)) # genrate range of random integers--> 
```
