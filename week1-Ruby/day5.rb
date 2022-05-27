# Ruby: Day 5
## Using Ruby for my own projects

def create_new_command(string_in)
  string_desc = string_in[/(?<=description=\{).*?(?=\}\])/,0]
  string_math = string_in[/(?<=ensuremath\{).*/,0].chop.chop
  string_symb = string_in[/(?<=\}\]\{).*?(?=\}\{\\)/,0]
  puts string_desc
  puts string_math
  puts string_symb
  
  new_string = "\\newglossaryentry{#{string_symb}}{name=\\ensuremath{#{string_math}},description={#{string_desc}}}"
  new_string
end

infile = 'symbols.txt'
outfile = 'newsymbols.txt'
File.open(infile, "r") do |fin|
  File.open(outfile, 'a') do |fout|
    #fin = fin.first(2)
    fin.each do |line|
      puts " "
      new_line = create_new_command(line)
      fout.puts new_line
    end
  end
end


