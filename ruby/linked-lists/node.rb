class Node
  # Node of singly linked list
  attr_accessor :data, :next

  def initialize(data, next_node=nil)
    @data = data
    @next = next_node
  end
end
