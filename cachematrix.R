## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function makes the created matrix to be available easily by creating a Cache space. 
makeCacheMatrix <- function(x = matrix()) {
My_inverse <- NULL
    set <- function(y) {
        x <<- y
        My_inverse <<- NULL
    }
    get <- function() x
    setinverse <- function(inv) My_inverse <<- inv
    getinverse <- function() My_inverse
    list(set, get, setinverse, getinverse)
}
}

##Below function returns the cached matrix after inversion
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    My_inverse <- x$getinverse()
    if(!is.null(i)) {
        message("getting cached data")
        return(My_inverse)
    }
    m <- x$get()
    My_inverse <- solve(m, ...)
    x$setinverse(i)
    return (My_inverse)
}
}
