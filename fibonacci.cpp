#include <iostream>

auto fibonacci() {
    int first = 0, second = 1;
    return [first,second]() mutable {
        int third = first + second;
        first = second;
        second = third;
        return third;
    };
}

int main() {
    auto fib = fibonacci();
    std::cout << fib() << std::endl;
    std::cout << fib() << std::endl;
    std::cout << fib() << std::endl;
    std::cout << fib() << std::endl;
    std::cout << fib() << std::endl;
    std::cout << fib() << std::endl;
    std::cout << fib() << std::endl;
    return 0;
}
