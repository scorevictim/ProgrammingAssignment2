## cache the inverse of a matrix

## Cache inverse

makeCacheMatrix <- function(x = matrix()) {
        m<-NULL
        set<-function(y){
                x << - y # with << - can be the starting assignment behavior were carried out on the environment hierarchy
                m<<-NULL
        }
        get<-function() x
        setM<-function(solve) m<<-solve
        getM<-function() m
        list(set=set,get=get,setM=setM,getM=getM)

}


## compute inverse

cacheSolve <- function(x, ...) {
        m <- x$getM()
                if(!is.null(m)){
                message("TO cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data,...)
        x$setM(m)
        m
        ## Return a matrix that is the inverse of 'x'
}
