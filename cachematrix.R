## Caching the inverse of a Matrix
## Function of this R program: 
## 1. makeCacheMatrix & 2. cacheSolve

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
          x <<- y
          i <<- NULL
        }
        get <- function()x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function()i
        list(set = set,
             get = set,
             setinverse = setinverse,
             getinverse = getinverse)             
}

## Getting the inverse of the matrix
## cacheSolve retrieves the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    i <- x$getinverse()
    if (!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}
