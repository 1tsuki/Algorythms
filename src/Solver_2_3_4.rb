####################
# main code block
####################

class Solver_2_3_4
  INF = 10000
  def initialize(n, w, v, w_max)
    @n = n
    @w = w
    @v = v
    @w_max = w_max

    @dp = Array.new(@n+1).map{Array.new(@n*@v.max+1, INF)}
    @dp[0][0] = 0
  end

  def solve
    @n.times do |i|
      (@n*@v.max + 1).times do |j|
        if @v[i] <= j
          @dp[i+1][j] = [@dp[i][j], @dp[i][j-@v[i]] + @w[i]].min
        else
          @dp[i+1][j] = @dp[i][j]
        end
      end
    end

    res = 0
    (@n*@v.max + 1).times { |k| res = k if @dp[@n][k] <= @w_max }
    puts res
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

  solver = Solver_2_3_4.new(n, w, v, w_max)
  solver.solve
end
