## The following functions are used to calcuate the inverse of a matrix, if the matrix
##has been cached before. This allows for the inverse to be returned immediately
##rather than computing it repeatedly. The goal of these paired functions is to
##minimize potentially time-consuming computations for large matrices.

## The following function makeCacheMatrix creates a special "matrix", which is a special
## list containing functions to set the value of the matrix, get the value of the matrix,
##matrix

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) m <<- inverse
        getinverse <- function() m
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}


## The following function sets the value of the inverse of the matrix and
##gets the value of the inverse of the matrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- inverse(data, ...)
        x$setinverse(m)
        m
}
