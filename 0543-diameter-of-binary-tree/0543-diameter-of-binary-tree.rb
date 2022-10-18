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
# @return {Integer}
@maximum =0 
def diameter_of_binary_tree(root)
    @maximum = 0 
    
    max_depth(root)
    @maximum 
end

def max_depth(root)
    return 0 if root.nil?
    left =  max_depth(root.left) 
    right =  max_depth(root.right)
    
    sum = left + right 
    
    @maximum = sum if sum > @maximum
    [left, right].max + 1
   
end