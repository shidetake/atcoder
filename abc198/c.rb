def input_example
  example = <<~EOS
  3 4 4
  EOS
  example = example.split(/\R/)
end

def parse_input(input)
  input.first.split(' ').map(&:to_i)
end

def exec(r, x, y)
  l = (x ** 2 + y ** 2) ** (0.5)

  if l == r
    return 1
  elsif l < r
    return 2
  else
    return (l / r).ceil
  end
end

IS_TEST = false
input = IS_TEST ? input_example : readlines(chomp: true)
r, x, y = parse_input(input)
p exec(r, x, y)
