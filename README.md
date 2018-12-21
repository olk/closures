# closures

A closure is a named or anonymous function that captures non-global variables
that are defined outside of the function body.

C++:
```cpp
auto make_fn(int x = 0) {
    return [x]() mutable {
        x += 1;
        return x;
    };
}
```

Python:
```python
def make_fn(x=0):

    def closure():
        nonlocal x
        x += 1
        return x

    return closure
```

R:
```r
make_fn <- function(x=0) {
    closure <- function() {
        x <<- x+1
        x
    }
    return(closure)
}
```
