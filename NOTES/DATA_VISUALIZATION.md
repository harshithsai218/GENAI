# DATA VISUALIZATION
## WHAT IS THE PURPOSE OF DATA VISUALIZATION?
-- TO BETTER UNDERSTAND OF THE DATA WE PLOT DIFFERENT GRAPHS OR FIGURES.  

-- IN PYHTON THERE ARE TWO PACKAGES USED TO PLOT GRAPHS 
1. MATPLOTLIB
2. SEABORN

### ANATOMY OF A PLOT
#### WHAT ARE ALL THE DIFFERENT PARTS DO WE HAVE IN A PLOT?
1. CO-ORDINATES (X-AXIS AND Y-AXIS)
2. LABELS (X LABEL AND Y-LABEL)
3. TITLE
4. TICKS
5. GRIDS
6. LEGEND
7. FIGURE

## MATPLOTLIB

##### NOTE : IN MATPLOTLIB THE DEFAULT PLOT IS A LINE PLOT

### HOW TO IMPORT MATPLOTLIB?
```python  
import matplotlib.pyplot as plt
```

### PLOT A FIGURE ON THE HEIGHTS OF A CLASS ROOM
```python
height = [160,140,150,180,160,170]
plt.plot(height)
plt.show()
```
### PLOT LINE GRAPH BETWEEN HEIGHT AND WEIGHT
```Python
height = [160,140,150,180,160,170]
weights = [65,70,68,64,72,90]
plt.plot(weights,height)
plt.show()
```
### PLOT A STRAIGHT LINE USING NUMPY ARRAY
```Python
import numpy as np
x=np.array([1,9])
y= np.array([3,10])
plt.plot(x,y)
plt.show()
```

### PLOT A SCATTER PLOT WITHOUT SCATTER 
```Python
import numpy as np
x=np.array([1,9])
y= np.array([3,10])
plt.plot(x,y,'o') # o,x,p,P,#,+,s,D,d,h,H,v
plt.show()
```

### DRAW A PLOT BASED ON THE ABOVE ARRAY BY USING DIFFERENT SYMBOLS
```Python
a = np.array([1,2,3,4,5,6])
b = np.array([3,8,1,5,10,7])
plt.plot(a,b,'s')
plt.show()
```

### PLOT A LINE GRAPH WITH DIFFERENT COLORS
```Python
a = np.array([1,2,3,4,5,6])
b = np.array([3,8,1,5,10,7])
plt.plot(a,b,'o:r')
plt.show()
```

### APPLYING THE DIFFERENT FORMATTING LINES
1. SOLID LINES --> `'-'`
2. DOTTED LINES --> `':'`
3. DASHED LINES --> `'--'`
4. DASH DOT LINES --> `'-.'`

```Python
a = np.array([1,2,3,4,5,6])
b = np.array([3,8,1,5,10,7])
plt.plot(a,b,'o-r')
plt.show()
```

```Python
a = np.array([1,2,3,4,5,6])
b = np.array([3,8,1,5,10,7])
plt.plot(a,b,'o:r')
plt.show()
```

```Python
a = np.array([1,2,3,4,5,6])
b = np.array([3,8,1,5,10,7])
plt.plot(a,b,'o--r')
plt.show()
```

```Python
a = np.array([1,2,3,4,5,6])
b = np.array([3,8,1,5,10,7])
plt.plot(a,b,'o-.r')
plt.show()
```

### INCREASING THE SIZE OF THE MARKER FROM THE ABOVE PLOT
```Python
a = np.array([1,2,3,4,5,6])
b = np.array([3,8,1,5,10,7])
plt.plot(a,b,'P--r',ms=20)
plt.show() 
```

### GIVE THE MARKER EDGE COLOR DIFFERENT
```Python
a = np.array([1,2,3,4,5,6])
b = np.array([3,8,1,5,10,7])
plt.plot(a,b,'p-.y',ms=20,mec='b')
plt.show()
```
### FILL THE MARKER WITH A DIFFERENT COLOR
```Python
a = np.array([1,2,3,4,5,6])
b = np.array([3,8,1,5,10,7])
plt.plot(a,b,'p-.y',ms=20,mec='b',mfc='r')
plt.show()
```

### PLOT A GRAPH BETWEEN EXAM ENTRY NUMBER AND THE MARKS
```Python
x = [1,2,3,4,5,6,7,8,9]
y = [2,3,1,4,6,6,5,8,9]
plt.plot(x,y,'p')
plt.xlabel('Entry Number')
plt.ylabel('Marks in exam')
plt.title('Exam Entry Number vs Marks')
plt.show()
```

##### USE GRIDS : USED TO LOCATE THE EXACT LOCATION OF THE DATA POINTS
```Python
x = [1,2,3,4,5,6,7,8,9]
y = [2,3,1,4,6,6,5,8,9]
plt.plot(x,y,'p')
plt.xlabel('Entry Number')
plt.ylabel('Marks in exam')
plt.title('Exam Entry Number vs Marks')
plt.grid()
```
### SPECIFY THE GRID  ACCORDING TO THE X-AXIS AND Y-AXIS
```Python
x = [1,2,3,4,5,6,7,8,9]
y = [2,3,1,4,6,6,5,8,9]
plt.plot(x,y,'p')   
plt.xlabel('Entry Number')
plt.ylabel('Marks in exam')
plt.title('Exam Entry Number vs Marks')
plt.grid(axis='y') # axis='y' for y-axis
```

### CHANGE THE LINE STYLE, WIDTH AND COLOR OF THE GRID
```Python
x = [1,2,3,4,5,6,7,8,9]
y = [2,3,1,4,6,6,5,8,9]
plt.plot(x,y,'p')   
plt.xlabel('Entry Number')
plt.ylabel('Marks in exam')
plt.title('Exam Entry Number vs Marks')
plt.grid(axis='x',ls='--',lw=1,c = 'g') # axis='y' for y-axis [LS = line style, LW = line width, c = color of the grid]
```

# SCATTER PLOT

```python 
x = [1,2,3,4,5,6,7,8,9]
y = [2,1,4,6,6,5,8,9,10]
```
### DRAW A SCATTER FOR THE ABOVE DATA
```python
plt.scatter(x,y,color='r') # color = 'r' for red color
plt.show()
```

### DRAW A SCATTER PLOT WITH DIFFERENT SIZE AND COLOR
```python
plt.scatter(x,y,s=100,c='r',marker='p') # s = size of the marker, c = color of the marker, marker = type of marker
plt.show()
```

```python
x_female = [4.6,5.2,5.4,4.9,5.1,5.8,4.8]
y_female = [63,40,35,58,54,56,58]
```

### DRAW A SCATTER PLOT FOR THE ABOVE DATA
```python
plt.scatter(x_female,y_female,color='r',s=50) # color = 'r' for red color
plt.show()
```

## CHANGE THE SIZE OF THE SCATTERS ACCORDING TO THE WEIGHT OF FEMALE
```python
plt.scatter(x_female,y_female,color='r',s=y_female) # color = 'r' for red color, s = size of the marker
plt.show()
```

## HOUSING DATA SET
```python
import pandas as pd
df = pd.read_csv('/content/sample_data/california_housing_train.csv')
df.columns
```

### PLOT A SCATTER PLOT BETWEEN 'TOTAL ROOMS' AND 'POPULATION'
```python
plt.scatter(df['total_rooms'],df['population'],c='b',marker='o',s=df['total_rooms']/1000) # s = size of the marker, c = color of the marker, marker = type of marker
plt.show()
```

# HISTOGRAM
- HISTOGRAM CAN BE DRAWN BASED ON THE FREQUENCY
```python
data = [60,71,80,90,54,33,65,56,76,89,56,88,43,42]
plt.hist(data)
plt.show()
```
### DRAW A HISTOGRAM FOR THE ABOVE DATA USING BINS
```python
plt.hist(data,bins=5)
plt.show()