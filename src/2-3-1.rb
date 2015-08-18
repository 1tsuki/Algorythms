####################
# main code block
####################

def solve
  @dp = Array.new(@n+1).map{Array.new(@W+1, nil)}
  puts rec(0, @W)
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

####################
# code block for local testing
####################
if __FILE__ == $0
    @n = gets.chomp.to_i
    @w = Array.new(@n)
    @v = Array.new(@n)
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
# 4
# 2
# 3
# 1
# 2
# 3
# 4
# 2
# 2
# 5

####################
# expected output
####################
# 34
