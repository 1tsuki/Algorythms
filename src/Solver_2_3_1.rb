####################
# main code block
####################
class Solver_2_3_1
  def initialize(n, w, v, w_max)
    @n = n
    @w = w
    @v = v
    @w_max = w_max
  end
  def solve
    @dp = Array.new(@n+1).map{Array.new(@w_max+1, nil)}
    puts rec(0, @w_max)
  end

  def rec(i, j)
    if not @dp[i][j].nil? then
      return @dp[i][j]
    end
    if i == @n then #skip if index exceeded
      res = 0
    elsif j < @w[i] then #skip if unable to insert
      res = rec(i + 1, j)
    else #compare two case, added item or not
      res = [rec(i + 1, j), rec(i + 1, j - @w[i]) + @v[i]].max
    end

    return @dp[i][j] = res
  end
end

####################
# code block for local testing
####################
if __FILE__ == $0
  n = gets.chomp.to_i
  w = Array.new(n)
  v = Array.new(n)
  n.times do |i|
    w[i] = gets.chomp.to_i
    v[i] = gets.chomp.to_i
  end
  w_max = gets.chomp.to_i

  solver = Solver_2_3_1.new(n, w, v, w_max)
  solver.solve
end
