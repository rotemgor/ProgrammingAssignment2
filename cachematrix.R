## Put comments here that give an overall description of what your
## functions do
#using the example in the assigment
makeVector <- function(v= numeric()) {
  m <- NULL
  set <- function(y) {
    v <<- y
    m <<- NULL
  }
  get <- function() v
  setmean <- function(mean) m <<- mean
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}
#intiling the two vectors 
y<-c(2,2)
v<-c(1,1)
makeVector(y)
makeVector(v)
get <- function() y
get <- function() v
 class(y)
 y_f = data.frame(y)
 v_f = data.frame(v)
## Write a short comment describing this function
# we'll use the catched vector function to create matrix 
makeCacheMatrix <- function(x = matrix()) {
  #this wll only work for a 2 x 2 matrix need to create more general exdperession
t_matrix<-matrix(0) 
  t_matrix<<- NULL
  set_matrix<-function(y_mat){
    x <<- y_mat
    t_matrix<<-cbind(c(y_f),c(v_f))
names(t_matrix)<- c("col1","col2")
 t_matrix_f<-as.data.frame(t_matrix)
    head(t_matrix)
  }
 get <- function() x
 list(get=get)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  x<-matrix(0)
  makeCacheMatrix(x)
   print(x)	
	x<-as.data.frame(t(x))	
print(is.atomic(x))
  inv_matrix<-solve(x$get)
   return(inv_matrix)
}
  cacheSolve(please)
print(please)
 