def input_example
  example = <<~EOS
  1210
  EOS
  example = example.split(/\R/)
end

def parse_input(input)
  input.first.to_s
end

def is_palindrome?(input)
  (input.size / 2).times do |i|
    return false if input[i] != input[input.size - 1 - i]
  end
  return true
end

def exec(input)
  input.gsub!(/0*$/, '')

  if is_palindrome?(input)
    return true
  end
  false
end

IS_TEST = false
input = IS_TEST ? input_example : readlines(chomp: true)
n = parse_input(input)

output = exec(n)
if output
  puts 'Yes'
else
  puts 'No'
end
