####################
# main code block
####################

def solve
  cost = 0
  while @sorted_l.length > 1 do
    length = @sorted_l.shift + @sorted_l.shift
    @sorted_l.unshift(length)
    cost += length
  end
  puts cost
end

####################
# code block for local testing
####################
if __FILE__ == $0
    @n = gets.chomp.to_i
    @l = []
    for i in 0..@n-1 do
      @l[i] = gets.chomp.to_i
    end
    @sorted_l = @l.sort
    solve
end


####################
# sample input
####################
# 3
# 8
# 5
# 8

####################
# expected output
####################
# 34
