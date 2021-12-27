// https://leetcode.com/problems/two-sum/

package main

func main() {
	twoSum([]int{1, 2, 3}, 2)
}

func twoSum(nums []int, target int) []int {
	for i := 0; i < len(nums); i++ {
		for j := 0; j < len(nums); j++ {
			if nums[i]+nums[j] == target && i != j {
				return []int{i, j}
			}
		}
	}
	return nil
}
