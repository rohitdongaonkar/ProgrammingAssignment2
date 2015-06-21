## I have used the same code structure that was used in the example and changed the names 
## of functions (eg. setmean was changed to setinverse and so on...)


## The main function "makeCacheMatrix" contains 4 functions (set, get, setinverse, getinverse)
## creat a special vector

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
    i
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i 
## Return a matrix that is the inverse of 'x'
}
