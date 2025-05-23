## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This project includes two functions and only works on matrix ## supplied is an invertible matrix.
##This 1st function creates a special "matrix" object that can ## cache its inverse. 


makeCacheMatrix <- function(x = matrix()){
        inv <- NULL
        set <- function(y){
        x <<- y
        inv <<- NULL
}
# Returns the current matrix
get <- function() x

# set inverse function
setinv <- function(inverse)
        inv <<- inverse

# Retrieves the cached inverse matrix
getinv <- function() 
        inv

# Returns a list of the above four sub functions 
list(set=set, get=get, setinv = setinv, getinv=getinv)

}


## This is second function that checks whether inverse is 
## already calculatd and saved in cache
## If it is cached, it returns it with a message
## If it is not cached, it will calculate the inverse with ## solve(), caches it, 
## and returns it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinveres()
        ## checks whether cache includes the inverse matrix data, then 
        ## returns the message saying returning the cached
        if(!is.null(inv)) {
                message("getting the cached inverse matrix")
                return(inv)
        }
        
        dat <- x$get()
        inv <- solve(dat,...) ## computes inverse function if there is no cached
        ## inverse matrix is NULL
        x$setinverse(inv) ## this is matrix data and will be saved to cache
        
        inv ## return the newly calculated matrix
}
