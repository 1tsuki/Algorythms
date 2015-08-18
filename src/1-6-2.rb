####################
# main code block
####################
def solve
  puts "min : #{get_min}"
  puts "max : #{get_max}"
end

def get_min
  min = 0
  for num in @x do
    min = [[num, @l-num].min, min].max
  end
  return min
end

def get_max
  max = 0
  for num in @x do
    max = [[num, @l-num].max, max].max
  end
  return max
end

####################
# code block for local testing
####################
if __FILE__ == $0
    @l = gets.chomp.to_i
    @n = gets.chomp.to_i
    @x = Array.new(@n, nil)
    for i in 0..@n-1 do
      @x[i] = gets.chomp.to_i
    end
    solve
end


####################
# sample input
####################
# 10
# 3
# 2
# 6
# 7

####################
# expected output
####################
# min : 4
# max : 8
