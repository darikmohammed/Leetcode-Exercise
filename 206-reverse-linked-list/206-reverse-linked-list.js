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
var reverseList = function(head) {
    if(!head){
        return head
    }
    let elements = []
    let current_node = head
    while(current_node){
        elements.push(current_node)
        current_node = current_node.next
    }
    let j= elements.length - 2
    current_node = elements[elements.length-1]
    head = current_node
    while(j>=0){
        current_node.next = elements[j]
        j--
        current_node = current_node.next
        if(j<0){
            current_node.next = null
        }
    }
    return head
};