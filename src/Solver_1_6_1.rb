####################
# main code block
####################
class Solver_1_6_1
  def initialize(n, a)
    @n = n
    @a = a
    @sorted_a = @a.sort {|x, y| (-1) * (x <=> y) }
  end

  def solve
    @sorted_a.each_with_index do |arg, i|
      # quit if array length exceeded
      if i+3 > @sorted_a.length then
        puts 0
        return
      else
        if is_triangible?(arg, @sorted_a[i+1], @sorted_a[i+2]) then
          puts arg + @sorted_a[i+1] + @sorted_a[i+2]
          return
        end
      end
    end
    puts 0
  end

  def is_triangible?(a, b, c)
    array = [a,b,c].sort
    return (array[2] < array[1] + array[0]) ? true : false
  end
end

####################
# code block for local testing
####################
if __FILE__ == $0
  n = gets.chomp.to_i
  a = []
  n.times { |i| a[i-1] = gets.chomp.to_i}

  solver = Solver_1_6_1.new(n, a)
  solver.solve
end
