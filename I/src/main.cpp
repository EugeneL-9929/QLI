# include <iostream>
# include <vector>

using namespace std;

int main() {
    vector<int> v = {1, 2, 3, 4, 5};
    for (const auto& i : v) {
        std::cout << i << " ";
    }
    std::cout << std::endl;
    return 0;
}