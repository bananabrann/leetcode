// https://leetcode.com/problems/two-sum/
// To execute TS directly in shell, use `ts-node main.ts`

function twoSum(nums: number[], target: number): number[] {
  for (let i: number = 0; i < nums.length; i++) {
    for (let j: number = 0; j < nums.length; j++) {
      if (nums[i] + nums[j] === target && i !== j) return [i, j];
    }
  }

  return null;
}

twoSum([2, 7, 11, 15], 9);
