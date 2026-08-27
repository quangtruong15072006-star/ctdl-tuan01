#include <iostream>
#include <utility>

using namespace std;

pair<int, int> phan_tich(long long n) {
    int so_chu_so = 0;
    int tong_chu_so = 0;
    
    while (n > 0) {
        int d = n % 10;
        tong_chu_so += d;
        so_chu_so++;
        n /= 10;
    }
    
    return {so_chu_so, tong_chu_so};
}

int main() {
    long long n;
    if (cin >> n) {
        pair<int, int> res = phan_tich(n);
        cout << res.first << " " << res.second << endl;
    }
    return 0;
}