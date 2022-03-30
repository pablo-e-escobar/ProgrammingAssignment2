## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
 ## These functions written in partial fulfillment of Coursera Data Science: R Programming
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL  ## Initialize the inverse property
  set <- function(y){  ## Method to set the matrix
    x <<- y
    inv <<- NULL
  }
  get <- function() x ##define the get fucntion - returns value of the matrix argument
  setInverse <- function(solveMatrix) inv <<- solveMatrix 
  getInverse <- function() inv 
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)  ## assigns value of inv in parent environment
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not changed),
## then the "cachesolve" should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data <- x$get()  ## Get the matrix from our object
  inv <- solve(data)  ## Set the inverse to the object
  x$setInverse(inv)
  inv      
}

