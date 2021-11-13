class C
  MAX_ANS = 10**9 + 7

  def initialize
    @n, @c = parse_input
  end

  def parse_input
    input = $stdin.readlines(chomp: true)

    # 1行で複数の数値が並ぶケース
    # input.shift.split(' ').map!(&:to_i)

    # 1行目に条件、2行目に数列が並ぶケース
    n = input.shift.split(' ').map!(&:to_i)
    [n, input.shift.split(' ').map!(&:to_i)]
  end

  def exec
    ans = @c.sort.each.with_index.inject(1) do |result, (elm, i)|
      result * (elm - i) % MAX_ANS
    end
    [0, ans].max.to_s
  end
end

return if __FILE__ != $PROGRAM_NAME

c = C.new
puts c.exec
