## Put comments here that give an overall description of what your
## functions do

## contrsuct the cache matrix

makeCacheMatrix <- function(x = matrix()) {
      s <- NULL
      set <- function(y){
            x <<- y
            s <<- NULL
      }
      get <- function() x
      setinverse <- function(i) s<<-i
      getinverse <- function() s
      list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## cache solveing, if isnt NULL, read cache

cacheSolve <- function(x, ...) {
        s <- x$getinverse()
        if(!is.null(s)){
              message("getting cache data")
              return(s)
        }else{
        data<- x$get()
        s <- solve(data,...)
        x$setinverse(s)}
        s
}
