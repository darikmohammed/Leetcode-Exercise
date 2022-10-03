/**
 * Definition for singly-linked list.
 * function ListNode(val, next) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.next = (next===undefined ? null : next)
 * }
 */
/**
 * @param {ListNode} list1
 * @param {ListNode} list2
 * @return {ListNode}
 */
var mergeTwoLists = function(list1, list2) {
    if(!list1 && !list2) return list1
    if(!list1 && list2 ) return list2
    if(list1 && !list2) return list1
    let pointer1 = list1
    let pointer2 = list2
    let mergeNode;
    if(pointer1.val<= pointer2.val){
        mergeNode = pointer1
        pointer1 = pointer1.next
    }else{
        mergeNode = pointer2
        pointer2 = pointer2.next
    }
    let mergePointer = mergeNode
    while(pointer1 || pointer2){
       if(pointer1 && pointer2){
           if(pointer1.val<=pointer2.val){
               mergePointer.next = pointer1
               pointer1 = pointer1.next
           }else{
               mergePointer.next = pointer2
               pointer2 = pointer2.next
           }
       }else if (pointer1){
           mergePointer.next = pointer1
           pointer1 = null
           
       }else{
           mergePointer.next = pointer2
           pointer2 = null
       }
       mergePointer = mergePointer.next      
    }
    return mergeNode
};