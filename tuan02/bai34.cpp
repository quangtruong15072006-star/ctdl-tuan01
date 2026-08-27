#include <iostream>
#include <cmath>

using namespace std;

long long dao_nguoc(long long n) {
    bool is_negative = n < 0;
    n = abs(n);
    
    long long rev = 0;
    while (n > 0) {
        rev = rev * 10 + n % 10;
        n /= 10;
    }
    
    return is_negative ? -rev : rev;
}

int main() {
    long long n;
    if (cin >> n) {
        cout << dao_nguoc(n) << endl;
    }
    return 0;
}