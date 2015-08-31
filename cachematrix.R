## The idea of this function is to be able to calculate the inverse of a matrix, but only once. Once the inverse
## has been calculated the solution is stored, so a second calculation is not necessary. So this function stores
## the inverse of the matrix once it has been calculated. Whenever the inverse has to be calculated again,
## the cache is searched for the answer. 

## At first a matrix class is created, with set and get functions, and then the inverse matrix is alsso created with get and set functions. 

makeCacheMatrix <- function(x = matrix()) {
        invm <- NULL
        set<- function (y){
                x <<- y
                cache <<- NULL
                }
## get matrix value
        get <function()x
##calculate inverse matrix and store in cache
        setInvm <- function (solve) invm <<- solve
##get inverted matrix from cache
        getInvm <-function() invm
## return values in working environment
        list(set=set, get = get, setInvm = setInvm, getInvm = getInvm)
}



## The next function checks whether the inverse matrix has already been calculated, 
## and the answer in the cache. If so the answer is returned, If not the inverse is calculated and returned

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## first look if cache is not empty, if so return value
        invm <- x$getInvm()
        if (!is.null(invm){
                message (" getting cache data")
                return (invm)
                }
        data <- x$get()
        invm <- solve (data)
        x$setInv(invm)
        inv
}
