require_relative 'node'

class LinkedList
  # Singly linked list

  attr_accessor :head

  def initialize(head)
    @head = head
  end

  def shift
    # Remove current head.
    old_head = @head
    @head = @head.next
    return old_head

  end

  def unshift(new_head)
    # Add new head node.
    new_head.next = @head
    @head = new_head
  end

  def pop
    # Remove tail node.
    if @head.data == nil
      return nil
    elsif @head.next == nil
      @head.data = nil
      return @head
    end

    prev = @head
    node = @head.next

    while node.next != nil
      prev = node
      node = node.next
    end
    prev.next = nil
    return node
  end

  def push(new_tail)
    # Add node to tail
    if @head.next == nil
      @head.next = new_tail
      return @head
    end

    node = @head
    while node.next != nil
      node = node.next
    end

    node.next = new_tail
    return @head
  end

  def print_all_nodes
    node = @head
    p node.data

    while node.next != nil
      node = node.next
      p node.data
    end
  end
end

# # Linked lists tests
# p 'Linked lists tests'
#
# # Initialization
# n_nodes = 7
# nodes = []
# n_nodes.times.with_index do |i|
#     nodes << Node.new(i)
# end
#
# linked_list = LinkedList.new(nodes[0])
# p 'push'
# (n_nodes - 1).times.with_index do |i|
#   linked_list.push(nodes[i + 1])
# end
#
# linked_list.print_all_nodes
#
# p 'pop'
# p linked_list.pop
# p 'new list'
# linked_list.print_all_nodes
#
# p 'shift'
# p 'shifted node'
# p linked_list.shift.data
# p 'new list'
# linked_list.print_all_nodes
#
# p 'unshift'
# p nodes.last.data
# linked_list.unshift(nodes.last)
# p 'new list'
# linked_list.print_all_nodes
