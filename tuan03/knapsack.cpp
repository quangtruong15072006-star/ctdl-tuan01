#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

struct Item {
    int w, v;
    double ratio;
};

int W = 14;
vector<Item> items = {{5, 12, 2.4}, {7, 15, 2.14}, {4, 8, 2.0}, {3, 5, 1.67}};
int n = 4;
int max_val = 0;
int nodes_pruned = 0, nodes_unpruned = 0;

double get_ub(int idx, int cur_w, int cur_v) {
    double bound = cur_v;
    int tot_w = cur_w;
    for (int i = idx; i < n; i++) {
        if (tot_w + items[i].w <= W) {
            tot_w += items[i].w;
            bound += items[i].v;
        } else {
            bound += (W - tot_w) * items[i].ratio;
            break;
        }
    }
    return bound;
}

void backtrack(int idx, int cur_w, int cur_v, bool use_pruning, int &node_cnt) {
    node_cnt++;
    if (cur_v > max_val) max_val = cur_v;
    if (idx >= n) return;

    if (use_pruning && get_ub(idx, cur_w, cur_v) <= max_val) return;

    if (cur_w + items[idx].w <= W) {
        backtrack(idx + 1, cur_w + items[idx].w, cur_v + items[idx].v, use_pruning, node_cnt);
    }
    backtrack(idx + 1, cur_w, cur_v, use_pruning, node_cnt);
}

int main() {
    max_val = 0;
    backtrack(0, 0, 0, true, nodes_pruned);
    cout << "Co cat nhanh: Max Value = " << max_val << ", Nodes = " << nodes_pruned << endl;

    max_val = 0;
    backtrack(0, 0, 0, false, nodes_unpruned);
    cout << "Khong cat nhanh: Max Value = " << max_val << ", Nodes = " << nodes_unpruned << endl;

    return 0;
}