 makeCachematrix <-function (a=matrix()){
 ## Initializing the inverse property
 inv  <-NULL
 set<-function(b){
 a<<-b
 inv<<-NULL}
 get<-function()a
 setInverse<-function(inverse)inv<<-inverse
 getInverse<-function()inv
 list(set=set,get=get, setInverse=setInverse,getinverse=getInverse)
 }


cacheSolve <- function(a, ...) {
## Return a matrix that is the inverse of 'x'
                inv <- a$getInverse()
        if (!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        mat <- a$get()
        inv <- solve(mat, ...)
        a$setInverse(inv)
        inv
}
