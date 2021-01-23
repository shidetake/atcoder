def input_example
  example = <<~EOS
  6
  200 4 4 9 4 9
  EOS
  example = example.split(/\R/)
end

def parse_input(input)
  n = input.shift.to_i
  a = input.first.split(' ').map(&:to_i)
  [n, a]
end

def exec(a)
  sorted = a.uniq.sort
  max = 0
  sorted.each do |sub|
    tmp = a.map{|e| 0 <= e - sub ? 1 : 0}
    max = [max, sub * tmp.join.split('0').map{|e| e.size}.max].max
  end
  max
end

IS_TEST = true
input = IS_TEST ? input_example : readlines(chomp: true)
_, a = parse_input(input)

output = exec(a)
puts output
