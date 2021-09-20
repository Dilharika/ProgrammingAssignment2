## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i<-NULL
  
  set<-function(matrix){
    x<<-matrix
    i<<-NULL
  }
  get<-function(){
    x
  }
  
  setInverse<-function(inv){
    i<<-inv
  }
  getInverse<-function(){
    i
  }
  
  list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
}

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
 m<-x$getInverse()
  
  if(!is.null(m)){
    message("cached data")
    return(m)
  }
  
  data<-x$get()
    
    m<-solve(data)
    
  x$setInverse(m)
  m
}
