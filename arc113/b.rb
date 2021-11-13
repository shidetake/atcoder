require 'prime'

class Integer
  def first_place
    self.to_s[-1].to_i
  end
end

def input_example
  example = <<~EOS
  4 1 0
  EOS
  example = example.split(/\R/)
end

def parse_input(input)
  input.first.split(' ').map(&:to_i)
end

def mod4(b, c)
  case mod4 = b % 4
  when 0
    return 0
  when 1
    return 1
  when 2
    return c.even? ? 0 : 2
  when 3
    return c.even? ? 1 : 3
  end
end

def exec(a, b, c)
  return 1 if b.zero?

  table = [
    [0, 0, 0, 0],
    [1, 1, 1, 1],
    [6, 2, 4, 8],
    [1, 3, 9, 7],
    [6, 4, 6, 4],
    [5, 5, 5, 5],
    [6, 6, 6, 6],
    [1, 7, 9, 3],
    [6, 8, 4, 2],
    [1, 9, 1, 9],
  ]

  table[a.first_place][mod4(b, c)]
end

IS_TEST = true
input = IS_TEST ? input_example : readlines(chomp: true)
a, b, c = parse_input(input)

output = exec(a, b, c)
puts output
