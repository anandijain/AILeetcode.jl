class Solution {
public:
    vector<int> twoSum(vector<int>& nums, int target) {
        unordered_map<int, int> complement_map;
        for (int i = 0; i < nums.size(); i++) {
            int complement = target - nums[i];
            if (complement_map.count(complement)) {
                return {complement_map[complement], i};
            }
            complement_map[nums[i]] = i;
        }
        return {};
    }
};

void test_twoSum() {
    Solution s;
    vector<int> nums1 = {2, 7, 11, 15};
    vector<int> output1 = {0, 1};
    assert(s.twoSum(nums1, 9) == output1);

    vector<int> nums2 = {3, 2, 4};
    vector<int> output2 = {1, 2};
    assert(s.twoSum(nums2, 6) == output2);

    vector<int> nums3 = {3, 3};
    vector<int> output3 = {0, 1};
    assert(s.twoSum(nums3, 6) == output3);
}

int main() {
    test_twoSum();
    return 0;
}
