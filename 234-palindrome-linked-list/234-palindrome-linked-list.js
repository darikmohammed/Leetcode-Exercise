/**
 * Definition for singly-linked list.
 * function ListNode(val, next) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.next = (next===undefined ? null : next)
 * }
 */
/**
 * @param {ListNode} head
 * @return {boolean}
 */
var isPalindrome = function(head) {
    let pointer = head
    let array = []
    while (pointer !==null){
        array.push(pointer.val)
        pointer = pointer.next
    }
    pointer = head
    let i = array.length -1
    while (pointer !== null){
        if(pointer.val !== array[i] )
            return false
        pointer = pointer.next
        i--
    }
    return true
};