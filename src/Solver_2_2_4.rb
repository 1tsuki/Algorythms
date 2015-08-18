####################
# main code block
####################

class Solver_2_2_4
  def initialize(n, r, x)
    @n = n
    @r = r
    @x = x
    @marked = []
  end

  def solve
    mark_point(0)
    puts @marked.length
  end

  def mark_point(start_index)
    i = start_index + 1
    while is_valid_index?(i) && is_in_range?(i, start_index)  do
      i += 1
    end

    if not i == @x.length-1 then
      @marked.push(@x[i])
      return mark_point(i)
    elsif not is_in_range?(i, start_index) then
      @marked.push(@x[i])
      return
    else
      return
    end
  end

  def is_valid_index?(i)
    return i <= @x.length - 1
  end

  def is_in_range?(i, start_index)
    return @x[i] <= @x[start_index] + @r
  end
end

####################
# code block for local testing
####################
if __FILE__ == $0
  n = gets.chomp.to_i
  r = gets.chomp.to_i
  x = []
  n.times { |i| @x[i] = gets.chomp.to_i}

  solver = Solver_2_2_4.new(n, r, x)
  solver.solve
end
