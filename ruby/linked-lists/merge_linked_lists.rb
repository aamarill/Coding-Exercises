# Given two sorted singly linked lists, merge them without altering the original lists.
# The merged linked list should be in sorted order.
# Some initial steps to solving the problem have been provided for you.
# Hint: Don’t overthink the problem!

# Example:
# In: (list1: 1 -> 4 -> 7 -> 10 -> 12,  list2: 1 -> 2 -> 5 -> 7 -> 10)
# Out: (mergedList3: 1 -> 1-> 2 -> 4 -> 5 -> 7 -> 7 -> 10 -> 10 -> 12)

# Starter Code
# var merge_linked_lists = function(list1, list2)
# 	list1 is the head node of the first linked list
# 	list2 is the head node of the second linked list
# 	//implement solution here
#
# 	HINT: try starting with this…
# 	initialize a head node to point to the final merged list
# 	let head = <something>
#
#


class Node
	attr_accessor :data, :next

 	def initialize(data, next_node=nil)
		@data = data
 		@next = next_node
  end
end

def merge_linked_lists(list1, list2)

  # Set the head.
	if list1.data <= list2.data
  	head = list1
    list1 = list1.next
  else
    head = list2
    list2 = list2.next
  end

  # Set the next node from head.
  if list1.data <= list2.data
  	head.next = list1
    list1 = list1.next
  else
    head.next = list2
    list2 = list2.next
  end

  while(list1 != nil)

    if list.data == nil
  	if node1.data <= node2.data
    	tempNode.next = node1
      node1 = node1.next
    else
    	tempNode.next = node2
      node2 = node2.next
    end

    tempNode = tempNode.next

  end

  head

end

p "Tests"
generator = Random.new
list1_length = 3
list1_range = 0..100
list1_numbers = []

list2_length = 3
list2_range = 0..100
list2_numbers = []

list1_length.times do
  rand_int = generator.rand(list1_range)
  list1_numbers << rand_int
end
list1_numbers.sort!

list2_length.times do
  rand_int = generator.rand(list2_range)
  list2_numbers << rand_int
end
list2_numbers.sort!

i = 0
while(i < list1_numbers.length)
  if i == 0
    list1 = Node.new(list1_numbers[i])
  elsif i == 1
    next_1 = Node.new(list1_numbers[i])
    list1.next = next_1
  else
    next_1.next = Node.new(list1_numbers[i])
    next_1 = next_1.next
  end
  i+= 1
end

i = 0
while(i < list2_numbers.length)
  if i == 0
    list2 = Node.new(list2_numbers[i])
  elsif i == 1
    next_2 = Node.new(list2_numbers[i])
    list2.next = next_2
  else
    next_2.next = Node.new(list2_numbers[i])
    next_2 = next_2.next
  end
  i+= 1
end

p "list1:"
p list1
p "list2:"
p list2
p "=== Merged list ==="
p merged_list = merge_linked_lists(list1, list2)
