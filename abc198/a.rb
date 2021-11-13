def input_example
  example = <<~EOS
  1
  EOS
  example = example.split(/\R/)
end

def parse_input(input)
  input.map(&:to_i)
end

def exec(elm)
  elm - 1
end

IS_TEST = false
input = IS_TEST ? input_example : readlines(chomp: true)
cases = parse_input(input)

cases.each do |elm|
  p output = exec(elm)
end
