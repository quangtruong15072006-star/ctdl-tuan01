#include <iostream>
#include <vector>
#include <iomanip>

using namespace std;

int main() {
    int n;
    if (!(cin >> n) || n <= 0) return 0;

    vector<long long> a(n);
    for (int i = 0; i < n; i++) {
        cin >> a[i];
    }

    long long tong = 0;
    long long nho_nhat = a[0], lon_nhat = a[0];

    for (int i = 0; i < n; i++) {
        tong += a[i];
        if (a[i] < nho_nhat) nho_nhat = a[i];
        if (a[i] > lon_nhat) lon_nhat = a[i];
    }

    double trung_binh = (double)tong / n;

    cout << tong << " " << fixed << setprecision(4) << trung_binh << " " << nho_nhat << " " << lon_nhat << endl;

    return 0;
}
