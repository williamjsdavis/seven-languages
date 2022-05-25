# Ruby: Day 1
## Variable assignment, strings, and conditionals
x = 7
puts 'This number is 4' if x == 4
puts 'This number is not 4' unless x == 4

if x == 3
  puts 'This number is 3'
end

## Control flow (if/while/unless/until)
unless x == 7
  puts 'This number is not 7'
else
  puts 'This number is 7'
end

y = 0
y = y + 1 while y < 10
puts y

until y == 1
  y = y - 1
  puts y
end

## Logic (includes short-circuiting)
if (y == 1) || (r == 3)
  puts 'y was 1, but r is not evaluated'
end

## Typing system (dynamic, strong, duck)
def add_string_and_num_errors
  4 + 'five'
end

a = ['100', 100.0]
i = 0
while i < 2
  puts i
  puts a[i].to_i
  puts a[i].to_i.class
  i = i + 1
end

# Self study

## API: https://rubyapi.org/

## Replace part of a string
my_string = 'There are 4 cats'
puts my_string.gsub('4', 'four')

## Regular expressions: https://rubyapi.org/3.1/o/regexp

## Ranges: https://rubyapi.org/3.1/o/range

## A hello world
puts 'Hello, World.'

## String indexing
my_string_to_index = 'Hello, Ruby,'
puts my_string_to_index.index('Ruby')

## Loops and interpolation
for i in (1..3)
  puts "This is sentence number #{i}"
end

