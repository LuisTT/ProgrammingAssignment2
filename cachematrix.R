## First function creates the special matrix, compute the inverse matrix cache it. It also caches the original matrix.
## The second function retrieves the invert from the cache and inverted it to the original matrix

## This function creates a special matrix and computes his inverse, caching it.

makeCacheMatrix <- function()  {        # Function with no arguments to create a Special Matrix

    matrix_x <<- matrix(c(4,7,2,6),2,2) # Creates a matrix (matrix_x)

    a <- function(matrix_x){            # Internal Function that computes the inverse function
        i <- solve(matrix_x)
    }

    cached_matrix <<- a(matrix_x)       # Execution and caching of inverse matrix (cached_matrix)
    
    matrix_x                            # Printing the created matrix (matrix_x)
}


## This function returns an invert matrix from the cached vertion of the other function, 
## retrieving the inverse from the cache.
## Since decided to cache both, the inversion and the retrieve never conflicts with each other.

cacheSolve <- function(cached_matrix){  # Function with just returned and cached from previous function.
     
     a <- function(cached_matrix){      # Internal Function that computes the inverse function
         i <- solve(cached_matrix)      
     }
     
     matrix_x <<- a(cached_matrix)      # Retrieving the original matrix from the inverse
     
     cached_matrix                      # Printing de cached matrix (cached_matrix
} 

