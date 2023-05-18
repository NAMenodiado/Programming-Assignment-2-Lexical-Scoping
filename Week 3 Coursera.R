
makeCacheMatrix <- function(x=matrix()) {
  m <<- NULL
  dimx = dim(x)
  if (dimx[1]==dimx[2]){
    m <<- solve(x)
    return(m)
  }
  else{
    print("Not a square matrix! Please check your matrix!")
    m <<- NULL
  }
}

cacheSolve <- function(x, ...) {
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  else {
  m <- solve(x)
  print(m)
  return(m)
  }
}







#
data <- c(1, 4, 0, -1, 0, 1, 2, 6, -1)
y <- matrix(data, nrow = 3, ncol = 3)

