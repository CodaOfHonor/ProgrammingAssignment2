## As the assignment required, created two functions, makeCacheMatrix and cacheSolve
## makeCacheMatrix defines the four functions that will be returned as an argument
## cacheSolve checks for if a repeat matrix is being used(whereby it returns existing value in the cache)
## Process to find inverse of a matrix: 
## 1. assign matrix; 2. run makeCacheMatrix on matrixl; and 3. use the result of 2 as an argument in cacheSolve


## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
      x <<- y
      m <<- NULL
    }
    get <- function() x
    setsolve <- function(solve) m <<- solve
    getsolve <- function() m
    list(set = set, get = get,
         setsolve = setsolve,
         getsolve = getsolve)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
}
