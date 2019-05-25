## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y){
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inversedmatrix) i <<- inversedmatrix
  getinverse <- function() i
  list( set = set, 
        get = get,
        setinverse = setinverse,
        getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  a <- x$getinverse()
  if(!is.null(a) == TRUE) {
    message("getting Inversed Matrix from data")
    return(a)
  } else {
  getmtr <- x$get()
  a <- solve(getmtr,...) 
  x$setinverse(a)
  return(a)     ## Return a matrix that is the inverse of 'x'
  }
}
