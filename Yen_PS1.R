# Bing-Jie Yen
# Skill lab R: Problem set 1
# January 26, 2017

# 1. Find the difference: (100 to the power of 3) minus (the cube root of 99,999,999).

x1<- (100^3) - (99999999)^(1/3)
x1

# 2. Find the natural log of half of the result from the previous problem

x2<-log(x1/2)
x2

# 3. Create a vector containing 2 to the even-numbered powers from 10-20. Divide the vector by one-fourth.

x3<-(2^(seq(10,20,2)))/(1/4)
x3

# 4. Create a vector of the odd numbers from 1-100 and ???nd half its sum.

x4<-sum(seq(1,100,2))/2
x4

# 5. Round the natural log of the result of the last problem to three decimal points.

x5<-round(log(x4),digits=3)
x5

# 6. Sort the even numbers from 2 to 200 in descending order.

x6<-sort(seq(2,200,2),decreasing=T) # or sort(seq(200,2,-2))
x6

# 7. Create the following vector called 'w'.
## [1] 3 12 30 3 12 30 3 12 30 3 12 30

w<-rep(c(3,12,30),4)
w

# 8. How long is (how many items are contained in) 'w' from the previous problem?
length(w)

# 9. Create the following matrix and assign to an object named 'x'.
##   1 2 3
## x 3 6 9
## y 3 6 9
## z 3 6 9

x9<-rep(c(3,6,9),3)
x9

x<-matrix(x9,nrow=3,byrow = T,ncol=3,
         dimnames=list(c('x','y','z'),1:3))
x

# 10. Call the odd-numbered columns of x from the previous problem.

x10<-x[,c(1,3)]
x10

# 11. Create the following data frame called 'mydf'. Ensure that the string variable
#      does not become a factor.
##     kids  apples oranges
## 1    Jane    3        10
## 2    Jose    6         18
## 3     Bob    5         12
## 4  Margaret 4 13

kids<-c('Jane', 'Jose', 'Bob', 'Margaret')
apples<-c(3,6,5,4)
oranges<-c(10,18,12,13)
mydf<-data.frame(kids,apples,oranges)
mydf


# 12. Create a new variable in mydf called 'moreoranges' that indicates how many
#  more oranges are in each row than apples.


mydf$moreoranges<-mydf$oranges-mydf$apples
mydf$moreoranges



# 13. Create an array called 'x' of 100 matrices containing the numbers 1 through 10, 
# each with 5 rows and 2 columns. Call each matrix "mymatrix". Name the
#  rows of each A, B, C, D, E and name the columns y and z.


x<-matrix(1:10,nrow=5,byrow=T,ncol=2,dimnames = list(LETTERS[1:5],c("y","z"))) 
x
# x<-array(1:10,c(5,2,100))
mymatrix<-x[rep(seq(nrow(x)), 10), ]
mymatrix

#14. Create a list with two elements: the data frame mydf and the array x. Name the list 'mylist'.

mylist<-list(mydf,x)
mylist

# 15. Lists in R require double brackets to call elements within. For example,
# to call the data frame that is the ???rst element of your list from the previous
# problem, enter: mylist[[1]]

# How might you call the third matrix in the second element of your list?
mylist[[2]][3,] #mylist[[2]][,,3]