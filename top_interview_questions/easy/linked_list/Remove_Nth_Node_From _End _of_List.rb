# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  return nil unless head.next
  count = 0
  first, second = head, head
  while first
    second = second.next if count > n
    first = first.next
    count += 1
  end
  return head.next if count == n
  second.next = second.next.next
  head
end
