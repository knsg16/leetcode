# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
  dump = ListNode.new(0)
  head = dump
  while !l1.nil? && !l2.nil? do
    if l1.val < l2.val
      head.next = l1
      l1 = l1.next
    else
      head.next = l2
      l2 = l2.next
    end
    head = head.next
  end
  if !l1.nil?
    head.next = l1
  else
    head.next = l2
  end
  dump.next
end
