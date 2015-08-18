####################
# main code block
####################

class Solver_2_3_2
  def initialize(n, m, s, t)
    @n = n
    @m = m
    @s = s
    @t = t
  end

  def solve
    @dp = Array.new(@n+1).map{Array.new(@m+1, 0)}
    for i in 0..@n-1 do
      for j in 0..@m-1 do
        if (@s[i] == @t[j]) then
          @dp[i+1][j+1] = @dp[i][j] + 1
        else
          @dp[i+1][j+1] = [@dp[i][j+1], @dp[i+1][j]].max
        end
      end
    end
    puts @dp[@n][@m]
  end
end

####################
# code block for local testing
####################
if __FILE__ == $0
  n = gets.chomp.to_i
  m = gets.chomp.to_i
  s = gets.chomp.to_s
  t = gets.chomp.to_s

  solver = Solver_2_3_2.new(n, m, s, t)
  solver.solve
end
