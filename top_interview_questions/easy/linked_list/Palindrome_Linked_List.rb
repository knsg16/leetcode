# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
  c = length(head)
  m = (c-1) / 2

  current, pre = head, nil

  # making reversed linked list
  (m+1).times do
    current.next, pre, current = pre, current, current.next
  end
  reverse = c.odd? ? pre.next : pre

  # making sure if current and reverse is oalindrome or not
  while reverse && current
    return false if reverse.val != current.val
    reverse, current = reverse.next, current.next
  end

  true
end

def length(node)
  c = 0
  c, node = c + 1, node.next while node
  c
end
