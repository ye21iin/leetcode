/**
 * Definition for singly-linked list.
 * class ListNode {
 *     val: number
 *     next: ListNode | null
 *     constructor(val?: number, next?: ListNode | null) {
 *         this.val = (val===undefined ? 0 : val)
 *         this.next = (next===undefined ? null : next)
 *     }
 * }
 */

function addTwoNumbers(l1: ListNode | null, l2: ListNode | null): ListNode | null {
    let dummy = new ListNode(0); // Result list: dummy node
    let current = dummy;
    let carry = 0; // Variable to store 

    while (l1 !== null || l2 !== null || carry !== 0) {
        const sum = (l1?.val ?? 0) + (l2?.val ?? 0) + carry;
        carry = Math.floor(sum / 10); // If sum >= 10, set carry to 1
        current.next = new ListNode(sum % 10); // Create a new node
        current = current.next; // Move to the next node

        // Move to the next nodes if available
        l1 = l1?.next ?? null;
        l2 = l2?.next ?? null;
    }
    return dummy.next;
};