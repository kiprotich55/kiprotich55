log(2
    )
log(2)
log(2, base=10)
log(2, base=5)
4%%2 #modulo operation, returns the remainder
25%%5
25%%2


25%/%2
25%/%2


#------------------------data types--------------------------#

#----vector

# 1,2,3,2,25,26,28


# c-integer function in r and very important in creating vectors-combine, concatenate(pastethem together
)
x<-c(1,2,3,2,25,26,28)
print(x)
length(x)
#picking the thirf element of x

y<-x[5]
print(y)

z <-x[c(3,5)];z

a <- x[c(4,5,6)];a

a <-x[4:6];a

z<-1:100;z

z<- seq(from=1,to =100, by =1)
z<- seq(from=1, to =100, by=2);z

z<- seq(1,100,1);z

#Ali, Bett, Carol, Wendy

names<-c("Ali","Bett","Carol","Wendy")
names


#A  

S <-rep("A",times=20)
S


X<-c(1,3,5,7,8,9)
X<-rep(X, times=4)
X


ALL[rep(X, times=2)X<-1:10; X]
X
names<-("Carol","Wendy","James")
names

ALL_F<-rep(c(1:5, seq(6,14,2)),3)
ALL_F
ALL_F<-rep(C(seq(1,9,2),C(1,3,4),42,2:9))
ALL_F


y<- c(1,3,5,7,8,9)


#vector operation


#addition of vectors

x+y

#x+y adds the corresponding indices

x+z
x/y
z<-c(2:7)
z
x+z
vals<-c(
  10,20,30,35,40,43,50,60,67,70,80,90,93,100
)
vals
#select  the component of vector vals that are greater than 5

a<-vals[vals>45];a


#select the component vector vals smaller than 72

a<-vals[vals<72];a

#select the components of vals equal to 30
a<-vals[vals==30];a

#select all the components that are different form 30

a<-vals[vals!=30];a

#components greater than 27 but lower than 83

a<-vals[vals>27&vals<83];a

#components lower than 35 or greater than 71

a<-vals[vals<35| vals>71];a

#WHAT IS THE INDEX OF 40

which(vals==40)

?any
any(vals<=40);a
any(vals>=100);a
?sum


vals<-c(10,20,30,35,40,43,50,,60,67,70,80,90,93,100,NA)
vals
sum(vals, na.rm=TRUE)
Tot<-sum(vals,na.rm=TRUE)
mean(vals)

?sd
#matrix, elements arraged in rows and columns, must be of the same element type

x<- 1:9
X

mat_1<-matriX(x, nrow=3, ncol=3)
matmat_2 <-matriX(x,nrow=3,byrow=T)
mat_3<-matrix(rnorm(9),nrow=3)
mat_2


arr<-array(rnorm(12),c(2,3,4))
arr


#data frame

Name<-c("weight","height","distance")

Boy<-c(23,45,78)

Girl<c(34,56,72)

details <-cbind(Name, Boy, Girl)




child<-(11,25,31)

dtime<-cbind(Boy, Girl, child)
dtime2<-cbind(Boy, Girl, child)
x<-c(1,3,5,7,9,1,3,5,7,9)
y<-c(rep("Hello")"Goodbye",2))
y<-c(rep("Goodbye",5))
z<-rep(c(TRUE,FALSE),5)


#Data Wrangling

age<-c(50,48,30,25,25,22,19,16,11,9)
gender<-c("M","F","M","F","F","M","M","M","F","M")

df2<-data.frame(age,gender)

#adding columns to an existing data frame

height<-c(178,175,190,170,168,172,160,158,152,149)
weight<-c(106,106,208,213,413,322,111,116,211,130)

name<-c("John","Mercy","Evans","Stella","Lucy","Felix","Denzel","Tony","Elanor","Washington")

working<-c("Yes","No","Yes","Yes","Yes","No","No",NA, NA, NA)

df2<-cbind(df2, height, name, working)

DF3<-data.frame(age=c(6,3),gender=c("M","F"),height=c(140,90),name=c("James","Nancy"),working=c(NA,NA))
df4<rbind(df2,DF3)

#Add a column called BMI computed from weight and height

df4<-cbind(BMI=weight/height^2)

##.........df4<-df4|>mutate(BMI=weight/height)....tidyverse package

df4[c(1,3),]

#first 6 rows and then columns 2,4,5

df2[c(1,6),c(2,4,5)]
#extract all rows from df2 and give them one variable

df2[,"working"]
df2[,c("working","age")]


#select individuals of age>15 and age height and working

df2[,c for(age>15){
  print(age)
}
  (,"height","working")]

age_15<-df4[df4$age>15,c("age","height","working")]

#...subseting data using subset

age_work<-subset(df2,age>15,c("age","height","working"))
age_work


#merging data sets
install.packages("random")
library(random)
DataFrame1<-data.frame(studentID=1:20,
                       Subject=c(rep("Physics",4),rep("Chemistry",4),rep("Math",4),rep("SS",4),
                                 rep("Arts",4)),
                       Marks=c(random::randomNumbers(20,70,100,1)),
                       Race=c(rep("Black",4),rep("White",4),rep("Coloured",4),rep("Latin",4),rep("Indian",4))
                       )
DataFrame2<-data.frame(studentID=1:10,
                       State=c(rep("Nairobi",2),rep("Kisumu",2),rep("Mombasa",2),rep("Kisii",2),rep("Kitui",2)),
                       Age=c(random::randomNumbers(10,16,20,1)),
                       Gender=c(rep("Male",3),rep("Female",3),rep("Male",2),rep("Female",2))
                       )
#different ways of merging

#inner join-retains the rows equal to the lowest number of rows in any of the data frames
#outer join-joins all the rows and if there is no match in no rows, the rows are created and filled NAs
#left outer join-retains all of the rows of the left data frame regardless of whether there is a row that matches the right data frame
#right outer join-retains all the rows of the right data frame regardless of whether there is a row that matches the left data frame

#......inner join

merge1<-merge(DataFrame1, DataFrame2)
view(merge1)
#.....outer join


merge2<-merge(DataFrame1,DataFrame2, by="studentID", all=TRUE)


#......left outer join

merge3<-merge(x=DataFrame1, y=DataFrame2, by="studentID",all.x=TRUE)
merge4<-merge(x=DataFrame2, y=DataFrame1, by="studentID",all.x=TRUE)


#...right outer join

merge5<-merge(x=DataFrame1, y=DataFrame2, by="studentID",all.y=TRUE)
merge6<-merge(x=DataFrame2, y=DataFrame1, by="studentID",all.y=TRUE)

library(tidyverse)

trafficstops<-read.csv("D:\\Data\\MS_trafficstops_bw_age.csv")
str(trafficstops)

#the mean age of drivers in Adams County

mean(trafficstops[trafficstops$county_name=="Adams County","driver_age"])


#functions in dplyr

#select()
#filter()
#slice()
#sample_frac()
#arrange

data_selected<-select(trafficstops, officer_id,police_department,driver_race)

data_selected_2<-select(trafficstops, starts_with("driver"))

#.....use filter to select row

data_selected_3<-filter(trafficstops,county_name=="Adams County")


#1. Create a new dataframe with only the columns state, county name, driver race and police department
#2. Create  a dataframe with the driver ages less than 50 years
#3. Create a dataframe of the first ten rows
#. Sample 0.1% of the data
#5. Sample from the data a new dataframe with a sample size =20 (n=20)
#6. Choose any of your dataset and arrange by county name and stop_date


#question one
data_selected_4<-select(trafficstops,county_name,driver_race,police_department)

#question two
answer_2<-filter(trafficstops, driver_age<50)

answer3<-slice(trafficstops,1:10)

answer4<-sample_frac(trafficstops, 0.001)

answer5<-sample_n(trafficstops,20)
answer_6<-arrange(answer5, county_name, stop_date)
