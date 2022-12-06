class Node
  attr_accessor :value, :next

  def initialize(data, next_node = nil)
    @value = data
    @next = next_node
  end
end

class SimpleLinkedList
  # is_empty? return true if the linked list  is empty
  def empty?
    @head.nil?
  end

  # push: given a data, add a new node in the end
  def push(data)
    if empty?
      @head = Node.new(data)
    else
      current_node = @head
      new_node = Node.new(data)
      current_node = current_node.next until current_node.next.nil?
      current_node.next = new_node
    end
  end

  # unshift: add a new node in the front
  def unshift(data)
    if empty?
      @head = Node.new(data)
    else
      curr_head = Node.new(data)
      curr_head.next = @head
      @head = curr_head
    end
  end
end

linked_list = SimpleLinkedList.new
linked_list.push(2)
linked_list.push(1)
linked_list.unshift(20)
linked_list.push(5)

puts linked_list.inspect
