####################
# main code block
####################
def solve
  result = dfs(0, 0)
  puts result ? "YES" : "NO"
end

def dfs(i, sum)
  # return if all calculated
  return sum == @k if i == @n

  # case didn't use index i
  return true if dfs(i + 1, sum)

  # case used index i
  return true if dfs(i + 1, sum + @a[i])

  # false if didn't match
  return false
end

####################
# code block for local testing
####################
if __FILE__ == $0
    @n = gets.chomp.to_i
    @a = []
    for index in 0..@n-1 do
      @a[index] = gets.chomp.to_i
    end
    @k = gets.chomp.to_i
    solve
end


####################
# sample input
####################
# 4
# 1
# 2
# 4
# 7
# 13

####################
# expected output
####################
# YES
