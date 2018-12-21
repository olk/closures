# returns a local function
def make_fn(x=0):
    
    def closure():
        # `nonlocal` prevents that `x` will be implicitly created as local variable
        # it flags a variable as a free variable even when it is assigned a new value
        nonlocal x
        x += 1
        return x

    return closure

if __name__ == "__main__":
    fn1 = make_fn()
    fn2 = make_fn()
    fn3 = make_fn(5)
    print(str(fn1()))
    print(str(fn2()))
    print(str(fn3()))
    print(str(fn2()))
    print(str(fn2()))
    print(str(fn1()))
    print(str(fn3()))
