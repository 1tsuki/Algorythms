####################
# main code block
####################

def solve
  @dp = Array.new(@n+1).map{Array.new(@W+1, 0)}

  for i in 0..@n-1 do
    for j in 0..@W do
      k = 0
      while k * @w[i] <= j do
        @dp[i+1][j] = [@dp[i+1][j], @dp[i][j-k*@w[i]] + k*@v[i]].max
        k += 1
      end
    end
  end

  puts @dp[@n][@W]
end

####################
# code block for local testing
####################
if __FILE__ == $0
    @n = gets.chomp.to_i
    @w = []
    @v = []
    for i in 0..@n-1 do
      @w[i] = gets.chomp.to_i
      @v[i] = gets.chomp.to_i
    end
    @W = gets.chomp.to_i
    solve
end


####################
# sample input
####################
# 3
# 3
# 4
# 4
# 5
# 2
# 3
# 7

####################
# expected output
####################
# 10
