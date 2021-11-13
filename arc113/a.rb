def input_example
  example = <<~EOS
  31415
  EOS
  example = example.split(/\R/)
end

def parse_input(input)
  input.shift.to_i
end

def exec(k)
  count = 0
  (1..k).each do |a|
    (1..k).each do |b|
      break if k < a * b
      (1..k).each do |c|
        if a * b * c <= k
          count += 1
        else
          break
        end
      end
    end
  end
  count
end

IS_TEST = true
input = IS_TEST ? input_example : readlines(chomp: true)
k = parse_input(input)

output = exec(k)
puts output
