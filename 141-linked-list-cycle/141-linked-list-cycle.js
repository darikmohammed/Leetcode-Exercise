/**
 * Definition for singly-linked list.
 * function ListNode(val) {
 *     this.val = val;
 *     this.next = null;
 * }
 */

/**
 * @param {ListNode} head
 * @return {boolean}
 */
var hasCycle = function(head) {
    let stack= [];
    let pos = 0; 
    let current_pointer = head
    
    // head  pos
   //   [3]->[2]->[0]->[4] 
    //       c_p
    
    
    while(current_pointer){
        if(stack.includes(current_pointer)){
            pos = stack[stack.indexOf(current_pointer)]
            if(pos.next === current_pointer.next) return true
        }else{
            stack.push(current_pointer)
            current_pointer = current_pointer.next
        }
    }
    return false; 
};