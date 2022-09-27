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
var deleteDuplicates = function(head) {
    if(!head || !head.next){
        return head
    }
    let list_elements = []
    let previous_pointer = head
    let current_pointer = head.next
    
    while(current_pointer){
        list_elements.push(previous_pointer.val)
        if(list_elements.includes(current_pointer.val)){
            previous_pointer.next = current_pointer.next; 
            current_pointer = current_pointer.next
        }else{
            previous_pointer = current_pointer
            current_pointer = current_pointer.next
        }
        
    } 
    return head
};