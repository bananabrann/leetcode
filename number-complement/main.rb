# https://leetcode.com/problems/number-complement/

# @param {Integer} num
# @return {Integer}
def find_complement(num)
    # Turn num to binary, then relplace the ones and zero, then convert
    # back to base 10.
    return num.to_s(2).tr('01', '10').to_i(2)
end

puts find_complement(5)
