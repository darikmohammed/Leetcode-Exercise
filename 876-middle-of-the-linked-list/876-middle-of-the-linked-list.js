/**
 * Definition for singly-linked list.
 * function ListNode(val, next) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.next = (next===undefined ? null : next)
 * }
 */
/**
 * @param {ListNode} head
 * @return {ListNode}
 */
var middleNode = function(head) {
    let stack_elements =[]
    let count = 0; 
    let current_node = head; 
    while(current_node){
        count ++
        stack_elements.push(current_node)
        current_node = current_node.next
    }
    return stack_elements[Math.floor(count/2)] 
};