# Ruby: Day 3
## Open class
class NilClass
  def blank?
    true
  end
end

class String
  def blank?
    self.size == 0
  end
end

["", "person", nil].each do |element| 
  puts element unless element.blank? 
end

class Numeric
  def inches
    self
  end
  
  def feet
    self * 12.inches
  end
  
  def yards
    self * 3.feet
  end
  
  def miles
    self * 5280.feet
  end
  
  def back
    self * -1
  end
  
  def forward
    self
  end
end

puts 10.miles.back
puts 2.feet.forward

class Roman
  def self.method_missing name, *args
    roman = name.to_s
    roman.gsub!("IV", "IIII")
    roman.gsub!("IX", "VIIII")
    roman.gsub!("XL", "XXXX")
    roman.gsub!("XC", "LXXXX")

    (roman.count("I") +  
     roman.count("V") * 5 +
     roman.count("X") * 10 + 
     roman.count("L") * 50 +
     roman.count("C") * 100)
  end
end

puts Roman.X
puts Roman.XC
puts Roman.XII
puts Roman.X

## Modules
module ActsAsCsv
  def self.included(base)
    base.extend ClassMethods
  end
  
  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end
  end
  
  module InstanceMethods   
    def read
      @csv_contents = []
      filename = self.class.to_s.downcase + '.txt'
      file = File.new(filename)
      @headers = file.gets.chomp.split(', ')

      file.each do |row|
        content = row.chomp.split(', ')
        @csv_contents << CsvRow.new(@headers, content)
      end
    end
    
    attr_accessor :headers, :csv_contents
    def initialize
      read 
    end
    def each &block
      @csv_contents.each &block
    end
  end
  class CsvRow
        attr_accessor :header_row, :content_row

        def initialize(header_row, content_row)
            @header_row = header_row
            @content_row = content_row
        end

        def method_missing name, *args
            content_index = @header_row.index(name.to_s)
            return @content_row[content_index]
        end
    end
end

class RubyCsv  # no inheritance! You can mix it in
  include ActsAsCsv
  acts_as_csv
end

# Self study
csv = RubyCsv.new
csv.each {|row| puts row.two}
