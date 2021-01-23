def input_example
  example = <<~EOS
  3 0
  10 3
  1000 100
  1000 100
  EOS
  example.split(/\R/).map{|line| line.split(' ').map(&:to_f)}
end

def exec(input)
  _, x = input.shift
  sum = 0.0
  input.each.with_index(1) do |d, i|
    sum += d[0] * d[1] / 100.0
    return i if x < sum
  end

  return -1
end

IS_TEST = true

input = IS_TEST ? input_example : readlines(chomp: true).map{|line| line.split(' ').map(&:to_f)}

output = exec(input)
puts output
