# https://leetcode.com/problems/palindrome-number/

# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    return (x.to_s <=> x.to_s.reverse!) === 0
end

puts is_palindrome(110)
