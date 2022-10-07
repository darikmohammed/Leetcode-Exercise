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
# @return {Float[]}
def average_of_levels(root)
    sums = []
    queue = [root]
    while queue.length != 0 do
        queueLength = queue.length
        sum = 0.0 
        (0..queueLength-1).each do
            node = queue.shift()
            queue.push(node.left) if node.left
            queue.push(node.right) if node.right
            sum += node.val
        end
        sums << sum/queueLength
    end
    return sums
end