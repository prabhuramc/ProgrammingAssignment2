## These functions were written by prabhuram.chelladurai@gmail.com as part of Assignment 2 in Coursera R programming language course. 
## There are two functions as below, where makeCacheMatrix() creates a copy or caches a inverse of a matrix. The function cacheSolve, calls the inverse function solve, if it finds no cache. 

## The function makeCacheMatrix() creates a copy or caches a inverse of a matrix. 

makeCacheMatrix <- function(x = matrix()) {

  m <- NULL
  set <- function(y) {
          x <<- y
          m <<- NULL
  }
  get <- function() x
  setcachemat <- function(solve) m <<- solve
  getcachemat <- function() m
  list(set = set, get = get,
       setcachemat = setcachemat,
       getcachemat = getcachemat)



}


## The function cacheSolve, calls the inverse function solve, if it finds no cache. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

        m <- x$getcachemat()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m


}
