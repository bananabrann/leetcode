# https://leetcode.com/problems/middle-of-the-linked-list/submissions/

class ListNode
  attr_accessor :val, :next
  def initialize(val = 0, _next = nil)
      @val = val
      @next = _next
  end
end

@param {ListNode} head
@return {ListNode}
def middle_node(head)
  slow_pointer = head
    fast_pointer = head

  while fast_pointer && fast_pointer.next do
    slow_pointer = slow_pointer.next
    fast_pointer = fast_pointer.next.next
  end

  return slow_pointer
end
