#include <iostream>
#include <vector>
#include <algorithm>
#include <string>

using namespace std;

int main() {
    int n = 5, W = 11;
    vector<int> w = {2, 3, 4, 5, 7};
    vector<int> v = {3, 7, 9, 12, 16};
    vector<string> ten = {"A", "B", "C", "D", "E"};

    vector<vector<int>> f(n + 1, vector<int>(W + 1, 0));

    for (int i = 1; i <= n; i++) {
        for (int j = 1; j <= W; j++) {
            if (j < w[i - 1]) {
                f[i][j] = f[i - 1][j];
            } else {
                f[i][j] = max(f[i - 1][j], f[i - 1][j - w[i - 1]] + v[i - 1]);
            }
        }
    }

    cout << "Bang f:\n";
    for (int i = 0; i <= n; i++) {
        for (int j = 0; j <= W; j++) {
            cout << f[i][j] << "\t";
        }
        cout << "\n";
    }

    cout << "Gia tri lon nhat: " << f[n][W] << "\n";

    int i = n, j = W;
    vector<string> chon;
    while (i > 0 && j > 0) {
        if (f[i][j] != f[i - 1][j]) {
            chon.push_back(ten[i - 1]);
            j -= w[i - 1];
        }
        i--;
    }
    reverse(chon.begin(), chon.end());

    cout << "Tap do vat duoc chon: ";
    for (auto item : chon) cout << item << " ";
    cout << "\n";

    return 0;
}