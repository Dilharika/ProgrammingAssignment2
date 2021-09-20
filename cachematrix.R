## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i<-NULL
## Method to set the matrix
  set<-function(matrix){
    x<<-matrix
    i<<-NULL
  }
## Method the get the matrix
  get<-function(){
    x
  }
 ## Method to set the inverse of the matrix
  setInverse<-function(inv){
    i<<-inv
  }
  ## Method to get the inverse of the matrix     
  getInverse<-function(){
    i
  }
  ## Return a list of the methods
  list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
}



}


## Write a short comment describing this function
## Compute the inverse of the special matrix returned by "makeCacheMatrix"
## If the inverse has already been calculated , then the "cachesolve" should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
 m<-x$getInverse()
  #return the inverse if its already set
  if(!is.null(m)){
    message("cached data")
    return(m)
  }
  ## Get the matrix from our object
  data<-x$get()
    # Calculate the inverse 
    m<-solve(data)
    ## Set the inverse to the object
  x$setInverse(m)
  m
}
