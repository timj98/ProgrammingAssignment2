## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  cacheMatrix <- NULL
  set <- function(y){
    x <<- y
    cacheMatrix <<- NULL
  }
  get <- function() x
  setmatrix <- function(solve) cacheMatrix <<- solve
  getmatrix <- function() cacheMatrix
  list(set = set, get = get, setmatrix = setmatrix, getmatrix = getmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x,...) {
        ## Return a matrix that is the inverse of 'x'
  cacheMatrix <- x$getmatrix()
  if(!is.null(cacheMatrix)){
    message("getting the cached matrix")
    return(cacheMatrix)
  }
  data <- x$get()
  cacheMatrix <- solve(data)
  x$setmatrix(cacheMatrix)
  cacheMatrix
}
