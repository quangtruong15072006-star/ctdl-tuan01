#include <iostream>
#include <vector>
#include <chrono>

using namespace std;

int board_origin[9][9] = {
    {5, 3, 0, 0, 7, 0, 0, 0, 0},
    {6, 0, 0, 1, 9, 5, 0, 0, 0},
    {0, 9, 8, 0, 0, 0, 0, 6, 0},
    {8, 0, 0, 0, 6, 0, 0, 0, 3},
    {4, 0, 0, 8, 0, 3, 0, 0, 1},
    {7, 0, 0, 0, 2, 0, 0, 0, 6},
    {0, 6, 0, 0, 0, 0, 2, 8, 0},
    {0, 0, 0, 4, 1, 9, 0, 0, 5},
    {0, 0, 0, 0, 8, 0, 0, 7, 9}
};

bool is_valid(int b[9][9], int r, int c, int val) {
    for (int i = 0; i < 9; i++) {
        if (b[r][i] == val || b[i][c] == val) return false;
    }
    int br = 3 * (r / 3), bc = 3 * (c / 3);
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            if (b[br + i][bc + j] == val) return false;
        }
    }
    return true;
}

// Version 1: Sequential
int calls_seq = 0;
bool solve_seq(int b[9][9]) {
    calls_seq++;
    for (int r = 0; r < 9; r++) {
        for (int c = 0; c < 9; c++) {
            if (b[r][c] == 0) {
                for (int val = 1; val <= 9; val++) {
                    if (is_valid(b, r, c, val)) {
                        b[r][c] = val;
                        if (solve_seq(b)) return true;
                        b[r][c] = 0;
                    }
                }
                return false;
            }
        }
    }
    return true;
}

// Version 2: MRV
int calls_mrv = 0;
pair<int, int> find_mrv_cell(int b[9][9]) {
    int min_c = 10;
    pair<int, int> best = {-1, -1};
    for (int r = 0; r < 9; r++) {
        for (int c = 0; c < 9; c++) {
            if (b[r][c] == 0) {
                int count = 0;
                for (int val = 1; val <= 9; val++) {
                    if (is_valid(b, r, c, val)) count++;
                }
                if (count < min_c) {
                    min_c = count;
                    best = {r, c};
                }
            }
        }
    }
    return best;
}

bool solve_mrv(int b[9][9]) {
    calls_mrv++;
    pair<int, int> cell = find_mrv_cell(b);
    if (cell.first == -1) return true;
    int r = cell.first, c = cell.second;
    for (int val = 1; val <= 9; val++) {
        if (is_valid(b, r, c, val)) {
            b[r][c] = val;
            if (solve_mrv(b)) return true;
            b[r][c] = 0;
        }
    }
    return false;
}

int main() {
    int b1[9][9], b2[9][9];
    for(int i=0; i<9; i++)
        for(int j=0; j<9; j++) b1[i][j] = b2[i][j] = board_origin[i][j];

    auto start = chrono::high_resolution_clock::now();
    solve_seq(b1);
    auto elapsed1 = chrono::high_resolution_clock::now() - start;
    long long t_seq = chrono::duration_cast<chrono::microseconds>(elapsed1).count();

    start = chrono::high_resolution_clock::now();
    solve_mrv(b2);
    auto elapsed2 = chrono::high_resolution_clock::now() - start;
    long long t_mrv = chrono::duration_cast<chrono::microseconds>(elapsed2).count();

    cout << "Quet tuan tu: So loi goi = " << calls_seq << ", Thoi gian = " << t_seq / 1000.0 << " ms" << endl;
    cout << "MRV: So loi goi = " << calls_mrv << ", Thoi gian = " << t_mrv / 1000.0 << " ms" << endl;

    return 0;
}