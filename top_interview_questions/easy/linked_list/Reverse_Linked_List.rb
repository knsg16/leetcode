# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  return head unless head

  prev = head
  current = head.next
  prev.next = nil

  while current
    tmp = current.next
    current.next = prev
    prev = current
    current = tmp
  end
  return prev
end
