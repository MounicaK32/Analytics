#datastructures in R
#Vectors -----
x=1:10
x
(x1<-1:20) #assigning as well as printing
(x2=c(1,2,3,20))
class(x2)
x3 = c('a',"ABC")
class(x3)
x4=letters[1:26]
x4
(x5=LETTERS)
(x5=c('s','HENry',5))
class(x5)

#access elements
?seq
(x6 = seq(0,200,by=6.5))
seq(0,100,3)
seq(100,0,-3)# seq(from,to,by) by default
x6
length(x6)
x6[10:20]
x6[-1] #every element except first element
x6[-c(1:10, 16:22)] #every element except 1 to 10 and 16 to 20 elements
x6[x6 >30 | x6<40]
x6[x6 >30 & x6<40]
length(x6)
x6[-length(x6)-1]#every element except the last but one eelement

#modify 

?sort
sort(x6)
x6 = sample(1:20) #random order
x6
sort(x6) #increasing orer by default
sort(x6,decreasing =T) 
rev(x6)
x6[x6>10 & x6<20] <- 999
x6
x7 = c(1,2,3,3,4,4,5,6,7,9)
x7
x7 = x6[1:4];x7 #truncate x7 with first 4 elements of x6
x6 = c(1,3,5,7)
plot(x6,x7)

?rnorm
(x=rnorm(1000000))
plot(density(x))
mean(x)
abline(v=c(-5,0,10))
(x1=rnorm(1000000, mean = 50, sd=4))
plot(density(x1))
abline(v=mean(x1,h=0.04))
hist(x1)
hist(x1, freq = F)
lines(density(x1), col=2)

#matrix -----
100:111
(m1=matrix(1:12,nrow = 4)) #filled by columns by default
(m1=matrix(1:12,ncol = 3, byrow = T))
(colnames(m1)=paste('Col',1:3,Sep=''))
m1
(rownames(m1)=paste('Row',1:4,Sep=''))
m1
m1[1:2,1:2]
m1[c('R1','R2','R3','R4'),c('C1','C2','C3')]
m2 = m1
m2
cbind(m2,m2)
rbind(m2,m2)


#dataframe -----
set.seed(1234) # for getting equal numbers of M&F
gender=sample(c('M','F'),size=30,replace = T)
gender
table(gender)
gender=sample(c('M','F'),size=30,replace = T, prob = c(0.7,.3))
gender
table(gender)
prop.table(table(gender))


(rollno=1:30)
(gender=sample(c('M','F'),size = 30,replace=T, prob=c(.7,.3)))
(sname= paste('student',1:30,sept=' '))
(marks1 = floor(rnorm(30,mean=50,sd=10)))
(marks2 = ceiling(rnorm(30,40,5)))
(course=sample(c('BBA','MBA'),size=30,replace = T, prob=c(0.5,0.5)))
rollno; sname; gender
marks1; marks2; course

df1 = data.frame(rollno,sname,gender,marks1,marks2, course, stringsAsFactors = F)
str(df1)
head(df1) #top6 rows
head(df1, n=3) #top 3 rows
tail(df1)#last 6 rows
class(df1)
summary(df1)
df1
df1$gender #onecolumn
head(df1[,c(2,4)])#multiple columns
df1[1:10,] #select rows, all columns
df1[1:5,1:4]
#as per conditions
df1[marks1>50 &gender=='F', c('rollno','sname','marks1')]
df1[marks1>50|gender=='F',]#row filters and column filters
names(df1)# name of columns
dim(df1) #Dimentions
aggregate(df1$marks1, by=list(df1$gender), FUN=sum)
aggregate(marks1~gender, data=df1, FUN = max)





#factors -----
