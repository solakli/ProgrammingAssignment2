## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#1. set the value of the matrix
#2. get the value of the matrix
#3. set the value of the inverse of a matrix
#4. get the value of inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
  
    inv <- NULL
    set <- function(y) {
      x <<- y
      inv <<- NULL
    }
    get <- function() x
    setInv <- function(inverse) inv <<- inverse
    getInv <- function() inv
    list(set = set, get = get,
         setInv = setInv,
         getInv = getInv)
  
}


## Write a short comment describing this function
#Returns the inverse of the matrix, checks if the inverse has already been computed
#if not it computes it, sets the value in the cache
#The matrix has to be always invertible
cacheSolve <- function(x, ...) {
  inv <- x$getInv()
  if(!is.null(m)) {
    message("getting cached data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInv(inv)
  inv
  
   ## Return a matrix that is the inverse of 'x'
}
