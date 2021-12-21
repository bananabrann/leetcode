# https://leetcode.com/problems/power-of-two/

# @param {Integer} n
# @return {Boolean}
def is_power_of_two(n)
    # Neat C# trick found at https://stackoverflow.com/a/600306/11057120
    return n != 0 && (n & (n -1 )).zero?
end

puts is_power_of_two(3)
