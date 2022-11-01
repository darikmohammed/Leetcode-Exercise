# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    result = []
    nums.each_with_index do |num, i|
        second_number = target - num 
        p second_number
        index_of_second_number = nums.index(second_number) 
       if index_of_second_number && index_of_second_number != i
           result << i;
           result << index_of_second_number;
           return result
       end
    end
    result
end