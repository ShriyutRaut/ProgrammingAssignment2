## Below functions takes matrix as input, gives its inverse from the cache,
## if the inverse is not in the cache, it calculates the inverse and stores in the cache

## makeCacheMatrix function creates a special vector and has functions to get, store the inverse in cache

makeCacheMatrix <- function(x = matrix()) {
  i<-NULL
  get_i <- function() i
  set_i <- function(x) i <<- x
  get<-function () x
  list(get_i = get_i, set_i = set_i,
       get = get)
  
  }


## cacheSolve function calculates the inverse, and stores in the cache, if the inverse is present in the cache, it loads fromm cache

cacheSolve <- function(x, ...) {
  i <- x$get_i()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i=solve(data)
  x$set_i(i)
  i
}