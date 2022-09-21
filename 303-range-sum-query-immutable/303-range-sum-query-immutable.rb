class NumArray

=begin
    :type nums: Integer[]
=end
    def initialize(nums)
        @sum = [s = 0] + nums.map{|num| s += num}
    end


=begin
    :type left: Integer
    :type right: Integer
    :rtype: Integer
=end
    def sum_range(left, right)
        # sum =0
        # (left..right).each do |i|
        #     sum += @nums[i]
        # end
        # sum
        @sum[right+1] - @sum[left]
    end


end

# Your NumArray object will be instantiated and called as such:
# obj = NumArray.new(nums)
# param_1 = obj.sum_range(left, right)