# @param {Integer[]} nums
# @return {Integer[]}
def find_disappeared_numbers(nums)
    # output = []
    # loop from 1 to nums.length
        # i not included in nums array then push to output 
   # return output
    # output = []
    # (1..nums.length).each do |i|
    #     output << i unless nums.include? i  
    # end
    # output
    (1..nums.length).to_a - nums
end