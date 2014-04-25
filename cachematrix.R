## These two functions handle the creating an caching of the inverse of a matrix.
## The user only needs to use cacheSolve as the makeCacheMatrix will only be called
## if the matrix is not cached. Assuming the matrix is cached the cached version of
## the matrix will be returned.
## Example Usage: cacheSolve(myMatrix1)
## Author: Robert Nield
## Date: 4/25/2014
## Last Update: 4/25/2014




## Function makeCacheMatrix
## Parameter(x) of type Matrix()
## Description: This function takes a required parameter of a matrix.
## The function will then create a inverse cache of the matrix and it will be pushed cached for future use.

makeCacheMatrix <- function(x = matrix()) {
  cache <<- solve(x)
  
}


## Function: cacheSolve
## Parameter(x) of type Matrix()
## Description: This returns the inverse of a matrix. Since this is an expensive operation the function checks if the
## matrix inverse is already cached. If the matrix is not cached it hands the matrix to the makeCacheMatrix function which 
## then creates an inverse of the matix and caches it for future use. If the matrix is already cached then it returns the cached version.

 
cacheSolve <- function(x, ...) {
    
    if (exists("cache") && !is.null(cache)){
      return(cache)
    }else{ 
      makeCacheMatrix(x)
      matrix <- cache
      
    }
    return(matrix)

      
}
