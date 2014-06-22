### the function helps us to calaculate inverse matrix or retrive the inverse matrix



### create the matrix

makeCacheMatrix <- function(x = matrix(0)) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmatrix <- function(matrix) m <<- matrix
  getmatrix <- function() m
  list(set = set, get = get,
       setmatrix= setmatrix,
       getmatrix = getmatrix)
}

## calculate tje inverse matrix 

cacheSolve <- function(x, ...) {

  ##  Return a matrix that is the inverse of 'x'
  m <- x$getmatrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setmatrix(m)
  m
}


