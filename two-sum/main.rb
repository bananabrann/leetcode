# https://leetcode.com/problems/two-sum/
# To execute in shell, use `ruby main.ts`

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
# Direct copy of TS implementation, but exceeds time limit
def two_sum(nums, target)
    nums.each_with_index do |num_i, i|
        nums.each_with_index do |num_j, j|
            if num_i + num_j === target and i != j then
                return [i,j]
            end
        end
    end

    return nil
end

puts two_sum([3,2,11,15], 6)
