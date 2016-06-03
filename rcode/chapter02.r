
c(1,2,3,4,5)
rev(1:5)
rev(letters)
rev(LETTERS)

x <- 1:4
y <- 11:14
z<-21:24

cbind(x,y,z)

xyz <- rbind(x,y,z)
xyz

t(xyz)

x <- matrix(1:25, 5,5)
y <- matrix(101:130, 5, 6)
xy <- cbind(x,y)


sum(1:100)

1:100+100:1

mean(1:100)

median(1:100)

min(c(-3,10,15))

max(c(-3,10,15))

apply(xy,1,sum)

apply(xy,2,sum)

sum2 <- function(a)
    {
    return(sum(a^2))
    }

sum2(1:5)

sum2(xy)

apply(xy,2,sum2)

mylist <- list(mat=xyz, vec=1:10)

names(mylist)

mylist$mat

mylist$vec

z <- c(TRUE, FALSE, TRUE)
is.numeric(z)

w <- as.numeric(z)
w

is.numeric(w)

sum(z)
sum(w)

data(mtcars)
mtcars

? mtcars

summary(mtcars)

mtcars[1:5,]

mtcars[,1:5]

mtcars[1:5, 1:5]

dim(mtcars)

mtcars[seq(1, 32, by=6), ]

seq(1, 32, by=6)

mtcars[c(1, 15, 20), ]

boolindex <- rep(c(TRUE,FALSE), c(10, 22))
mtcars[boolindex, 1:2]

gear4boolindex <- mtcars$gear==4
mtcars[gear4intindex, ]


mtcars[gear4boolindex,]

which(gear4boolindex)
which(mtcars$gear==4)


mtcars$gear

hist(mtcars$hp)

plot(mtcars$hp, mtcars$wt)

pairs(mtcars)

? pairs

(1:6)[-c(2,3)]
pairs(mtcars,gap=0.5, col="cyan", horInd=c((1:6)[-c(2,3)],11),verInd=c((1:6)[-c(2,3)],11))

boxplot(mtcars$mpg)

boxplot(mtcars)

plot(density(mtcars$hp))


hist(mtcars$hp, freq=FALSE, col="cyan",main="Density Plot of Hourse Power", xlab="Hourse Power",lwd=3)
points(density(mtcars$hp),type="l", col="red", lty=2, lwd=5)


hist(mtcars$hp, freq=FALSE)
plot(density(mtcars$hp))

hist(mtcars$hp)
points(density(mtcars$hp))

hist(mtcars$hp, freq=FALSE)
points(density(mtcars$hp))



hist(mtcars$hp, freq=FALSE)
points(density(mtcars$hp),type="l")


hist(mtcars$hp, freq=FALSE, col="cyan")
points(density(mtcars$hp),type="l", col="red")

hist(mtcars$hp, freq=FALSE, col="cyan",main="Density Plot of Hourse Power", xlab="Hourse Power",lwd=3)
points(density(mtcars$hp),type="l", col="red", lty=2, lwd=5)
