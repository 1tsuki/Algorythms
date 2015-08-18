####################
# main code block
####################
@coins = {
  500 => 0,
  100 => 0,
  50  => 0,
  10  => 0,
  5   => 0,
  1   => 0
}
@count = 0

def solve
  @coins.each do |price, stock|
    wanted = @a / price
    num = (stock >= wanted) ? wanted : stock
    @count = @count + num
    @a = @a - price * num
  end

  puts @count
end



####################
# code block for local testing
####################
if __FILE__ == $0
    @coins[1] = gets.chomp.to_i
    @coins[5] = gets.chomp.to_i
    @coins[10] = gets.chomp.to_i
    @coins[50] = gets.chomp.to_i
    @coins[100] = gets.chomp.to_i
    @coins[500] = gets.chomp.to_i
    @a = gets.chomp.to_i
    solve
end


####################
# sample input
####################
# 3
# 2
# 1
# 3
# 0
# 2
# 620

####################
# expected output
####################
# 6
