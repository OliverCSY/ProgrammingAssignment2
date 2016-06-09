## This assignment contains two functions in order to calculate the inverse of a given 
## matrix in a cached way. In doing so, the inverse of a matrix is stored the first time 
## it is evaluated, so that repeated work is unnecessary for the same matrix.

## makeCacheMatrix is a function with a matrix as the input, and returns a list of functions.
## * setMatrix is used for setting values to a matrix
## * getMatrix is used for getting values of a matrix
## * setInverse is used for setting the values of the inverse matrix
## * getInverse is used for getting the values of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    setMatrix <- function(y){
        x <<- y
        m <<- NULL
    }
    getMatrix <- function() {
        x
    }
    setInverse <- function(solve) {
        m <<- solve
    }
    getInverse <- function() {
        m
    }
    list(setMatrix=setMatrix,getMatrix=getMatrix,setInverse=setInverse,getInverse=getInverse)

}


## cacheSolve calculates the inverse of a matrix, or returns the cached value when it has
## been stored in the input matrix.

cacheSolve <- function(x, ...) {
    m <- x$getInverse()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$getMatrix()
    m <- solve(data, ...)
    x$setInverse(m)
    m
}
