## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y){         ##define the set matrix function
    x <<- y
    i <<- NULL
  }
  get <- function() x ##define the get matrix function
  setinverse <- function(inversedmatrix) i <<- inversedmatrix       ##define the function to contain the inversed matrix function
  getinverse <- function() i                           ##define the function to get the inversed matrix function
  list( set = set,                ## print out output in list data class
        get = get,
        setinverse = setinverse,
        getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  a <- x$getinverse()           ## get the inversed matrix from above function in the set function
  if(!is.null(a) == TRUE) {       ## whether or not the inversed matrix already exist
    message("getting Inversed Matrix from data")
    return(a)
  } else {
  getmtr <- x$get()     ## if it not pre-existed , we will compute the inverse matrix by solve() function
  a <- solve(getmtr,...) 
  x$setinverse(a)         ## define the input of setinverse by above result
  return(a)     ## Return a matrix that is the inverse of 'x'
  }
}
