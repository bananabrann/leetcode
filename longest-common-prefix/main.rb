# https://leetcode.com/problems/longest-common-prefix/

# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    return "" if strs.empty?
    str1, str2 = strs.min, strs.max

    str1.each_char.with_index do |char, i|
        if char != str2[i]
            return str1[0...i]
        end
    end
end

puts longest_common_prefix(["flower","flow","flight"])
