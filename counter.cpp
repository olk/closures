#include <iostream>

// returns an unnamed function object
auto make_fn( int x = 0) {
    // lambda expression captures variable `x` by copy
    return [x]() mutable {
        x += 1;
        return x;
    };
}

int main() {
    auto fn1 = make_fn();
    auto fn2 = make_fn();
    auto fn3 = make_fn( 5);
    std::cout << fn1() << std::endl;
    std::cout << fn2() << std::endl;
    std::cout << fn3() << std::endl;
    std::cout << fn2() << std::endl;
    std::cout << fn2() << std::endl;
    std::cout << fn1() << std::endl;
    std::cout << fn3() << std::endl;
    return 0;
}
