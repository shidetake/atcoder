def input_example
  example = <<~EOS
  send
  more
  money
  EOS
  example = example.split(/\R/)
end

def parse_input(input)
  input
end

def exec(s1, s2, s3)
  h = {}
  (s1 + s2 + s3).each_char do |c|
    h.store(c, 0)
  end
  p h.keys.permutation.to_a
end

IS_TEST = true
input = IS_TEST ? input_example : readlines(chomp: true)
s1, s2, s3 = parse_input(input)
exec(s1, s2, s3)
