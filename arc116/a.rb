def input_example
  example = <<~EOS
  3
  2
  998244353
  1000000000000000000
  EOS
  example = example.split(/\R/)
end

def parse_input(input)
  t = input.shift
  input.map(&:to_i)
end

def exec(elm)
  if elm.odd?
    puts 'Odd' 
  elsif (elm / 2).odd?
    puts 'Same' 
  else
    puts 'Even' 
  end
end

IS_TEST = false
input = IS_TEST ? input_example : readlines(chomp: true)
cases = parse_input(input)

cases.each do |elm|
  output = exec(elm)
end
