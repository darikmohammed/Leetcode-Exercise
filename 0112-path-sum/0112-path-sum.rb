# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @param {Integer} target_sum
# @return {Boolean}
def has_path_sum(root, target_sum)
    return false if root.nil?
    return true if (target_sum - root.val).zero? && root.left.nil? && root.right.nil?
    if root.left && root.right
        return has_path_sum(root.left, target_sum - root.val) || has_path_sum(root.right, target_sum - root.val)
    elsif root.left
        return has_path_sum(root.left, target_sum - root.val)
    elsif root.right
        return has_path_sum(root.right, target_sum - root.val)
    else
        return false
    end
end