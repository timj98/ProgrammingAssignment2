## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  cacheMatrix <- NULL
  
  ## the getters and setters
  set <- function(y){
    x <<- y
    cacheMatrix <<- NULL
  }
  get <- function() x
  setmatrix <- function(solve) cacheMatrix <<- solve
  getmatrix <- function() cacheMatrix
  
  ## create a list of functions to use in the scope
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
  ## get the data from the makeCacheMatrix
  data <- x$get() 
  
  ## take data and solve for inverse
  cacheMatrix <- solve(data)
  
  ## set the data into the object
  x$setmatrix(cacheMatrix)
  
  cacheMatrix
}
