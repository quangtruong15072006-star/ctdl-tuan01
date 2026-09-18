 #include <iostream>
#include <vector>
#include <cmath>
using namespace std;

int n, node_count = 0;
vector<int> x;
vector<vector<int>> solutions;

bool is_safe(int row, int col) {
    for (int i = 1; i < row; i++) {
        if (x[i] == col || abs(x[i] - col) == abs(i - row)) return false;
    }
    return true;
}

void try_queen(int row) {
    node_count++;
    for (int col = 1; col <= n; col++) {
        if (is_safe(row, col)) {
            x[row] = col;
            if (row == n) {
                solutions.push_back(vector<int>(x.begin() + 1, x.end()));
            } else {
                try_queen(row + 1);
            }
        }
    }
}

int main() {
    cin >> n;
    x.resize(n + 1);
    try_queen(1);
    cout << "So nut da duyet: " << node_count << endl;
    cout << "So loi giai: " << solutions.size() << endl;
    if (!solutions.empty()) {
        cout << "Ban co loi giai dau tien: ";
        for (int c : solutions[0]) cout << c << " ";
        cout << endl;
    }
    return 0;
}
 
