## This is for Coursera Programming assignment 2 - getting cached matrix in inversible
## format

## Below function gets the cached matrix that is passed

makeCacheMatrix <- function(x = matrix()) {
  m<- NULL
  set <- function(y){
    x<<- y
    m <<- NULL
  }
  get <- function()x
  setinverse <- function(solve) m<<-solve
  getinverse <- function()m
  list(set = set, get = get,setinverse = setinverse, getinverse = getinverse)

}


## Below function is to inverse the cached matix using solve function

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)){
    message("getting cached matrix")
    return(m)
  }
  data <- x$get()
  m <- solve(data,...)
  x$setinverse(m)
  m
}
