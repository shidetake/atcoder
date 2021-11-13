class A
  REGULAR_PRICE = 206
  SALES_TAX_RATE = 0.08

  def initialize
    @n = parse_input
  end

  def parse_input
    input = $stdin.readlines(chomp: true)
    input.first.to_i
  end

  def exec
    price = (@n * (1.00 + SALES_TAX_RATE)).floor

    if price < REGULAR_PRICE
      'Yay!'
    elsif price == REGULAR_PRICE
      'so-so'
    else
      ':('
    end
  end
end

def exist_stdin?
  File.select([$stdin], [], [], 0) != nil
end

return unless exist_stdin?

a = A.new
puts a.exec
