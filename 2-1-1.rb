####################
# main code block
####################
def dfs(i, sum)
  return sum == @k if i == @n

  return true if dfs(i + 1, sum)

  return true if dfs(i + 1, sum + @a[i])

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
    result = dfs(0, 0)
    puts result ? "YES" : "NO"
end
