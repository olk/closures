# closure == function that sets up local variables
# and creates and returns a function that accesses the variables
make_fn <- function(x=0) {
    # `x` is defined in the environment of `make_fn()`
    closure <- function() {
        # the environment of `make_fn()` has become the parent envirnoment
        # of `closure()`. e.g. it is chaned to the environment of this function
        # `x` must be modified by operator `<<-`
        x <<- x+1
        x
    }
    return(closure)
}
fn1 <- make_fn()
fn2 <- make_fn()
fn3 <- make_fn(5)
fn1() # [1] 1
fn2() # [1] 1
fn3() # [1] 6
fn2() # [1] 2
fn2() # [1] 3
fn1() # [1] 2
fn3() # [1] 7
