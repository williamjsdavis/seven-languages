# Ruby: Day 2
## Functions (always return something)

def my_function
  nil
end
puts my_function

## Arrays
my_array = ['apple','banana','carrot']
puts my_array[2]

jagged_array = ["zero", 1, ["two", "things"]]
puts jagged_array.pop(1)
puts jagged_array.inspect

## Hashes
numbers = {1 => 'one', 2 => 'two'}
puts numbers.inspect
puts numbers[1]

things = {:text => 'one', :number => 1}
puts things[:number]

puts :symbol.object_id
puts :symbol.object_id

def say_hello(options={})
  if options[:method] == :shout
    'HELLO'
  else
    'hello'
  end
end
puts say_hello()
puts say_hello(:method => :shout)

## Code block and yield, {} or do/end
3.times {puts 'Hello!'}

my_array.each {|x| puts "A #{x}"}

class Fixnum
  def my_times
    i = self
    while i > 0
      i = i - 1
      yield
    end
  end
end
2.my_times { puts 'Oi' }

def call_block(&block)
  block.call
  block.call
end
def pass_block(&block)
  call_block(&block)
end
pass_block {puts 'Hello, block'}

## Classes
class Tree
  attr_accessor :children, :node_name
  
  def initialize(name, children=[])
    @children = children
    @node_name = name
  end
  
  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end
  
  def visit(&block)
    block.call self
  end
end

ruby_tree = Tree.new( "Ruby", 
  [Tree.new("Reia"), 
   Tree.new("MacRuby")] )
higher_tree = Tree.new( "higher tree",
  [ruby_tree,
  Tree.new("other branch")] )

puts "Visiting a node"
higher_tree.visit {|node| puts node.node_name}
puts

puts "visiting entire tree"
higher_tree.visit_all {|node| puts node.node_name}

## Modules
module ToFile
  def filename
    "object_#{self.object_id}.txt"
  end
  def to_f
    File.open(filename, 'w') {|f| f.write(to_s)}
  end
end

class Person
  include ToFile
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  def to_s
    name
  end
end

## Enumerable and sets (inject ~ fold)
num_arr = (1..3)
puts num_arr.map {|i| 2*i}
puts num_arr.inject(0) {|sum, i| sum + i}

# Self study

## Hash to array
def hash_to_array(h)
  arr = []
  h.each do |key, array|
    arr.push([key, array])
  end
  arr
end
puts things
puts hash_to_array(things).inspect

## Enumerating array
my_16_array = [*(1..16)]
my_16_array.each do |n|
  puts [n,my_16_array[((n-1)...(n+3))]].inspect if (n-1)%4 == 0
end 
