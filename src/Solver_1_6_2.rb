####################
# main code block
####################
class Solver_1_6_2
  def initialize(l, n, x)
    @l = l
    @n = n
    @x = x
  end

  def solve
    puts "min : #{get_min}"
    puts "max : #{get_max}"
  end

  def get_min
    min = 0
    for num in @x do
      min = [[num, @l-num].min, min].max
    end
    return min
  end

  def get_max
    max = 0
    for num in @x do
      max = [[num, @l-num].max, max].max
    end
    return max
  end
end

####################
# code block for local testing
####################
if __FILE__ == $0
  l = gets.chomp.to_i
  n = gets.chomp.to_i
  x = Array.new(n, nil)
  n.times { |i| x[i] = gets.chomp.to_i}

  solver = Solver_1_6_2.new(l, n, x)
  solver.solve
end
