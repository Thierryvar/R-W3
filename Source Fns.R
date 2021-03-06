## Prog assignements W3
## Created 15 09 2014

## Function makevector

makeVector <- function(x = numeric()) {
    m <- NULL
    setmean <- function(mean) m <<- mean
    getmean <- function() m
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    
    list(set = set, get = get,
         setmean = setmean,
         getmean = getmean)
}

## Function cachemean

cachemean <- function(x, ...) {
    m <- x$getmean()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- mean(data, ...)
    x$setmean(m)
    m
}