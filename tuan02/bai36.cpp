#include <iostream>
#include <climits>

using namespace std;

bool giai_thua(int n, long long &kq) {
    kq = 1;
    for (int i = 1; i <= n; ++i) {
        if (kq > LLONG_MAX / i) {
            return false; // Phát hiện tràn số
        }
        kq *= i;
    }
    return true;
}

int main() {
    int n;
    if (cin >> n) {
        long long kq;
        if (giai_thua(n, kq)) {
            cout << kq << endl;
        } else {
            cout << "TRAN SO" << endl;
        }
    }
    return 0;
}