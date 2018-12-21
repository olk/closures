def fibonacci():
    first = 0
    second = 1

    def closure():
        nonlocal first, second
        third = first + second
        first = second
        second = third
        return third

    return closure

if __name__ == "__main__":
    fib = fibonacci()
    print(str(fib()))
    print(str(fib()))
    print(str(fib()))
    print(str(fib()))
    print(str(fib()))
    print(str(fib()))
    print(str(fib()))
