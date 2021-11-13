def input_example
  example = <<~EOS
  7
  853983 14095 543053 143209 4324 524361 45154
  EOS
  example = example.split(/\R/)
end

def parse_input(input)
  input[1].split(' ').map(&:to_i)
end

def exec(ary)
  sum = 0
  1.upto (2 ** ary.size - 1) do |i|
    subary = ary.reverse.select.with_index do |_, j|
      (1 << j & i).nonzero?
    end
    sum += subary.max * subary.min
    sum %= 998244353
  end
  sum
end

IS_TEST = false
input = IS_TEST ? input_example : readlines(chomp: true)
ary = parse_input(input)

p output = exec(ary)
