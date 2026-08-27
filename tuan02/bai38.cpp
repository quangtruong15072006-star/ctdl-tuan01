#include <iostream>
#include <vector>

using namespace std;

bool tang_nghiem_ngat(const vector<int>& a) {
    for (size_t i = 1; i < a.size(); ++i) {
        if (a[i] <= a[i - 1]) return false;
    }
    return true;
}

bool khong_giam(const vector<int>& a) {
    for (size_t i = 1; i < a.size(); ++i) {
        if (a[i] < a[i - 1]) return false;
    }
    return true;
}

int main() {
    int n;
    if (cin >> n) {
        vector<int> a(n);
        for (int i = 0; i < n; ++i) cin >> a[i];

        bool nn = tang_nghiem_ngat(a);
        bool kg = khong_giam(a);

        cout << "Nghiem ngat: " << (nn ? "YES" : "NO") << endl;
        cout << "Khong giam: " << (kg ? "YES" : "NO") << endl;
    }
    return 0;
}