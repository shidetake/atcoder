module StringEx
  refine String do
    def won?
      if self[0] == self[1] && self[1] == self[2]
        return true
      else
        return false
      end
    end
  end
end

using StringEx

input = gets

output = input.won? ? 'Won' : 'Lost'
puts output
