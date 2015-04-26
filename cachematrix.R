## Put comments here that give an overall description of what your
## functions do

## Take a matrix as a parameter, and calculate the inverse. Cache this inverse

makeCacheMatrix <- function(x) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list (set = set, get = get, 
      setinverse = setinverse, 
      getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x) {
  m <- x$getinverse()
  if (!is.null(m)) {
    message("getting inverse from cache")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setinverse(m) 
  ## Return a matrix that is the inverse of 'x'
  m 
}
