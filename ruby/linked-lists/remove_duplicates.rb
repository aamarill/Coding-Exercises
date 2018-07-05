require_relative 'linked_list'

# Goes through the list once storing data encountered in a hash table.
# If data is repeated, then that node is replaced with the following node.
# This algorithm is O(n), specially since we assume linked list is not sorted.

def remove_duplicates(linked_list)
  if !linked_list.is_a?(LinkedList) || linked_list.head == nil
    return nil
  end

  hash_table = {}
  node = linked_list.head

  while node.next != nil

    if hash_table[node.data]
      node.data = node.next.data
      node.next = node.next.next
    else
      hash_table[node.data] = true
    end

    if node.next != nil
      node = node.next
    end
  end
end


data = [1,2,3,5,1,7,8,3,9]
nodes = []
data.length.times.with_index do |i|
    nodes << Node.new(data[i])
end

linked_list = LinkedList.new(nodes[0])

(data.length - 1).times.with_index do |i|
  linked_list.push(nodes[i + 1])
end

p 'Linked List:'
linked_list.print_all_nodes

remove_duplicates(linked_list)
p 'Remove duplicates'
linked_list.print_all_nodes
