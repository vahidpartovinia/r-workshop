
print("Hello World!")
print(2+3)
2+3

x <- 4
y <- 5
x+y

x <- c(2, 3)
y <- c(4, 5)
x + y 


z <- c(TRUE, FALSE, TRUE)
z
w <- c(T, F, F)
w

y <- c("a", 'bc', 3) 
y

length(x) # returns the length of a vector


mat <- matrix(0, nrow=3, ncol=5)
Mat <- matrix(NA, nrow=3, ncol=10)
mat 
mat+1


as.vector(mat)

Mat
Mat+1

mydata <- as.data.frame(mat)
mat
mydata


mydata[1,] 

mydata[,2]  

mydata$V1  

dim(mydata)  

colnames(mydata) <- c("x", "y", "z", "w", "u")  

mydata

rownames(mydata) <- c("a", "b", "c")  

mydata

seq(from=1,to=100, by=10)  
seq(1,100, length=12) 
1:10

? seq

example(seq)

rep(1:10,1:10)

rep(1:10, each=10)

rep(1:10, times=10)
