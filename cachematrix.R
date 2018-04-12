## R Programming Assignment 2


## makeCachematrix sets value of matrix, gets value of matrix
## sets value of matrix inverse, gets value of matrix inverse

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- function()  {
		x <<- y
		m <<- NULL
	}

	get <- function() x
	setinv <- function(inv) m <<- inv
	getinv <- function() m
	list(set = set, get = get, setinv = setinv, getinv=getinv)

}


## calculates inverse of special matrix or uses cached value
## depending on the value of m


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

	m <- x$getinv()
	if(!is.null(m))  {
		message("getting cached data")
		return(m)
	}

	data <- x$get()
	m <- solve(data, ...)
	x$setinv(m)
	m


}



