fibonacci <- function() {
    first <- 0 
    second <- 1 
    closure <- function() {
        third <- first + second
        first <<- second
        second <<- third
        return(third)
    }
    return(closure)
}
fib <- fibonacci()
fib()
fib()
fib()
fib()
fib()
fib()
fib()
