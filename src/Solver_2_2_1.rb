####################
# main code block
####################
class Solver_2_2_1
  def initialize(coins, a)
    @coins = coins.sort_by{|key, value| -key}
    @a = a
  end

  def solve
    count = 0
    @coins.each do |price, stock|
      wanted = @a / price
      num = (stock >= wanted) ? wanted : stock
      count += num
      @a = @a - price*num
    end

    puts count
  end
end


####################
# code block for local testing
####################
if __FILE__ == $0
  coins = {}
  coins[1] = gets.chomp.to_i
  coins[5] = gets.chomp.to_i
  coins[10] = gets.chomp.to_i
  coins[50] = gets.chomp.to_i
  coins[100] = gets.chomp.to_i
  coins[500] = gets.chomp.to_i
  a = gets.chomp.to_i

  solver = Solver_2_2_1.new(coins, a)
  solver.solve
end
