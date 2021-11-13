class B
  def initialize
    @n, @x, @a = parse_input
  end

  def parse_input
    input = $stdin.readlines(chomp: true)

    # 1行で複数の数値が並ぶケース
    # input.shift.split(' ').map!(&:to_i)

    # 1行目に条件、2行目に数列が並ぶケース
    n, x = input.shift.split(' ').map!(&:to_i)
    [n, x, input.shift.split(' ').map!(&:to_i)]
  end

  def exec
    subtotal = @a.sum - @a.size / 2
    @x < subtotal ? 'No' : 'Yes'
  end
end

return if __FILE__ != $PROGRAM_NAME

b = B.new
puts b.exec
