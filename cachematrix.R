## I have used the same code structure that was used in the example and changed the names 
## of functions (eg. setmean was changed to setinverse and so on...)


## The main function "makeCacheMatrix" contains 4 functions (set, get, setinverse, getinverse)
## This function virtually same to the one given in the example

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


## This function will check if there is an inverse matrix stored in the cache, 
## and if not it will compute the inverse, store it in the cache and return it to the console

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
