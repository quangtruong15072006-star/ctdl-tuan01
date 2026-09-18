#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

const int INF = 1e9;
int D[4][4] = {
    {0, 10, 15, 20},
    {10, 0, 35, 25},
    {15, 35, 0, 30},
    {20, 25, 30, 0}
};
int N = 4;
int c_min = 10;
int min_cost = INF;
int nodes_pruned = 0, nodes_unpruned = 0;

void backtrack(int curr, int count, int cost, vector<bool> &visited, bool use_pruning, int &nodes) {
    nodes++;
    if (count == N) {
        if (D[curr][0] != 0) {
            min_cost = min(min_cost, cost + D[curr][0]);
        }
        return;
    }

    if (use_pruning) {
        int lb = cost + (N - count + 1) * c_min;
        if (lb >= min_cost) return;
    }

    for (int nxt = 0; nxt < N; nxt++) {
        if (!visited[nxt] && D[curr][nxt] != 0) {
            visited[nxt] = true;
            backtrack(nxt, count + 1, cost + D[curr][nxt], visited, use_pruning, nodes);
            visited[nxt] = false;
        }
    }
}

int main() {
    vector<bool> visited(N, false);
    visited[0] = true;

    min_cost = INF;
    backtrack(0, 1, 0, visited, true, nodes_pruned);
    cout << "Co cat nhanh: Cost = " << min_cost << ", Nodes = " << nodes_pruned << endl;

    min_cost = INF;
    backtrack(0, 1, 0, visited, false, nodes_unpruned);
    cout << "Khong cat nhanh: Cost = " << min_cost << ", Nodes = " << nodes_unpruned << endl;

    return 0;
}