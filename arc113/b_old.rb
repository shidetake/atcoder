require 'prime'

class Integer
  def first_place
    self.to_s[-1].to_i
  end

  def primes
    primes = self.prime_division.flatten
    primes.delete(1)
    primes
  end

  def first_place_of_exp(exp)
    fp = self.first_place
    return fp if fp == 0 || fp == 1
    exp.primes.each do |p|
      #p "fp = #{fp}, p  = #{p}"
      fp = (fp ** p).first_place
    end
    fp
  end
end

def input_example
  example = <<~EOS
  3141592 6535897 9323846
  EOS
  example = example.split(/\R/)
end

def parse_input(input)
  input.first.split(' ').map(&:to_i)
end

def exec(a, b, c)
  tmp = a
  c.times do
    tmp = tmp.first_place_of_exp(b)
  end
  tmp
end

IS_TEST = true
input = IS_TEST ? input_example : readlines(chomp: true)
a, b, c = parse_input(input)

output = exec(a, b, c)
puts output
