class Node
  attr_accessor :value, :next

  def initialize(value, next_node)
    @value = value
    @next = next_node
  end
end

class LinkedList
  def initialize(value)
    @head = Node.new(value, nil)
  end

  def add_to_list(value)
    current_node = @head
    current_node = current_node.next until current_node.next.nil?
    current_node.next = Node.new(value, nil)
  end

  def delete(value)
    current_node = @head
    if current_node.value = value
      @head = current_node.next
    else
      current_node = current_node.next while !current_node.next.nil? && (current_node.next.val != val)
      current_node.next = current_node.next.next unless current_node.next.nil?
    end
  end

  def return_list
    elements = []
    current_node = @head
    until current_node.next.nil?
      elements << current_node
      current_node = current_node.next
    end
    elements << current_node
  end
end

linked_list = LinkedList.new(7)
linked_list.add_to_list(2)
linked_list.add_to_list(1)
linked_list.add_to_list(20)
linked_list.add_to_list(5)

puts linked_list.return_list.inspect
