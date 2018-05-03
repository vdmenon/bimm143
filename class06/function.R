#Class 6 Bioninformatics

#Functions
add <- function (x, y=1){
  #Sum x and y inputs
  x + y
}

#My Second function
rescale <- function(x) {
  rng<- range(x, na.rm=TRUE)
  (x - rng[1]) / (rng[2] - rng[1])
}

#test on a small sample where you know the answer
rescale(1:112)
# How would you get your function to work here...
rescale( c(1,2,NA,3,10) )
# What should your function do here?
rescale( c(1,10,"string") )

#Next generation rescaling
rescale2 <- function(x, na.rm=TRUE, plot=FALSE) {
  if(na.rm) {
    rng <-range(x, na.rm=na.rm)
  } else {
    rng <-range(x)
  }
  print("Hello")
  answer <- (x - rng[1]) / (rng[2] - rng[1])
  print("is it me you are looking for?")
  if(plot) {
    plot(answer, typ="b", lwd=4)
  }
  print("I can see it in ...")
}

#rescale3
rescale3 <- function(x, na.rm=TRUE, plot=FALSE) {
  if(na.rm) {
    rng <-range(x, na.rm=na.rm)
  } else {
    rng <-range(x)
  }
  print("Hello")
  answer <- (x - rng[1]) / (rng[2] - rng[1])
  print("is it me you are looking for?")
  if(plot) {
    plot(answer, typ="b", lwd=4)
  }
  print("I can see it in ...")
  return (answer)
}