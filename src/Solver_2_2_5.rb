####################
# main code block
####################

class Solver_2_2_5
  def initialize(n, l)
    @n = n
    @l = l
    @sorted_l = @l.sort
  end

  def solve
    cost = 0
    while @sorted_l.length > 1 do
      length = @sorted_l.shift + @sorted_l.shift
      @sorted_l.unshift(length)
      cost += length
    end
    puts cost
  end
end

####################
# code block for local testing
####################
if __FILE__ == $0
  n = gets.chomp.to_i
  l = []
  n.times { |i| @l[i] = gets.chomp.to_i}

  solver = Solver_2_2_5.new(n, l)
  solver.solve
end
