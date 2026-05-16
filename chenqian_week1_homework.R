#向量
a<-c(1,2,5,3,6,-2,4)
a[3]
a[c(1,3,5)]
b<-c("one","two","three")
c<-c(TRUE,TRUE,TRUE,FALSE,TRUE,FALSE)
b[1]
c[1]
a[2:6]

#矩阵
y<-matrix(1:20,nrow=5,ncol=4)
y
cells<-c(1,26,24,68)
rnames<-c("R1","R2")
cnames<-c("C1","C2")
mymatrix<-matrix(cells,nrow=2,ncol=2,byrow=TRUE,dimnames=list(rnames,cnames))
mymatrix
mymatrix<-matrix(cells,nrow=2,ncol=2,byrow=FALSE,dimnames=list(rnames,cnames))
mymatrix
#矩阵下标的使用
x<-matrix(1:10,nrow=2)
x
x[2,]
x[,2]
x[1,4]
x[1,c(4,5)]

#数组
dim1<-c("A1","A2")
dim2<-c("B1","B2","B3")
dim3<-c("C1","C2","c3","c4")
z<-array(1:24,c(2,3,4),dimnames=list(dim1,dim2,dim3))
z

#数据框
patientID<-c(1,2,3,4)
age<-c(25,34,28,52)
diabetes<-c("Type1","Type2","Type1","Type1")
status<-c("Poor","Improved","Excellent","Poor")
patientdata<-data.frame(patientID,age,diabetes,status)
patientdata
patientdata[1:2]
patientdata[c("diabetes","status")]
patientdata$age
table(patientdata$diabetes,patientdata$status)

#因子
patientID<-c(1,2,3,4)
age<-c(25,34,28,52)
diabetes<-c("Type1","Type2","Type1","Type1")
status<-c("Poor","Improved","Excellent","Poor")
diabetes<-factor(diabetes)
status<-factor(status,order=TRUE)
patientdata<-data.frame(patientID,age,diabetes,status)
str(patientdata)
summary(patientdata)

# 列表
g<-"My First List"
h<-c(25,26,18,39)
j<-matrix(1:10,nrow=5)
k<-c("one","two","three")
mylist<-list(title=g,ages=h,j,k)
mylist
mylist[[2]]
mylist[["ages"]]

#tibble数据框
library(tibble)
mtcars<-as_tibble(mtcars)
mtcars

#数据的输入
mydata<-data.frame(age=numeric(0),gender=character(0),weight=numeric(0))
mydata<-edit(mydata)
expr <- read.delim("D:\\edge\\TCGA.COAD.sampleMap_HiSeqV2_PANCAN\\HiSeqV2_PANCAN", row.names=1)
library(readxl)

sink("chenqian_week1_homework.R",type="output")
