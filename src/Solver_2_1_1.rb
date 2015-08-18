####################
# main code block
####################
class Solver_2_1_1
  def initialize(n, a, k)
    @n = n
    @a = a
    @k = k
  end

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
end

####################
# code block for local testing
####################
if __FILE__ == $0
  n = gets.chomp.to_i
  a = []
  n.times { |i| a[i] = gets.chomp.to_i}
  k = gets.chomp.to_i

  solver = Solver_2_1_1.new(n, a, k)
  solver.solve
end
