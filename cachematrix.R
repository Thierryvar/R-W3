## Created on 15th 09/2014
## Tested the 17th 09/2014

## makeCaheMatrix : function with a matrix as parameters
## the matrix is supposed to be squared and can be inversed
## simple function wich stores X and the inverse of x

makeCacheMatrix <- function(x = matrix()) {
    
storx <<- x       ## remember x to compare in cache Solve
invx <<- 0        ## if don't work, a default value
invx <<- solve(x) ## compute the inverse of a square matrix and stores in invx

}


## Write a short comment describing this function
## verify if the matrix is the same as stored
## if identical, there is no doubt, the inversed computation was done
## return the stored value
## if not, compute and stores

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    if ( identical(x , storx) ){
       print("result extracted of the cache")
       return(invx) 
       }
print("result computed")
storx <<- x       ## remember x to compare in cache Solve (idem as makeCacheMatrix)
invx <<- solve(x)
invx
}
