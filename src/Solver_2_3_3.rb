####################
# main code block
####################

class Solver_2_3_3
  def initialize(n, w, v, w_max)
    @n = n
    @w = w
    @v = v
    @w_max = w_max
  end

  def solve
    @dp = Array.new(@n+1).map{Array.new(@w_max+1, 0)}

    for i in 0..@n-1 do
      for j in 0..@w_max do
        k = 0
        while k * @w[i] <= j do
          @dp[i+1][j] = [@dp[i+1][j], @dp[i][j-k*@w[i]] + k*@v[i]].max
          k += 1
        end
      end
    end

    puts @dp[@n][@w_max]
  end
end

####################
# code block for local testing
####################
if __FILE__ == $0
  n = gets.chomp.to_i
  w = []
  v = []
  n.times do |i|
    w[i] = gets.chomp.to_i
    v[i] = gets.chomp.to_i
  end
  w_max = gets.chomp.to_i

  solver = Solver_2_3_3.new(n, w, v, w_max)
  solver.solve
end
