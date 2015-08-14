####################
# main code block
####################
def solve(l, args)
  puts "min : #{get_min(l, args)}"
  puts "max : #{get_max(l, args)}"
end

def get_min(l, args)
  min = 0
  for num in args do
    min = [[num, l-num].min, min].max
  end
  return min
end

def get_max(l, args)
  max = 0
  for num in args do
    max = [[num, l-num].max, max].max
  end
  return max
end

####################
# code block for local testing
####################
if __FILE__ == $0
    l = gets.chomp.to_i
    n = gets.chomp.to_i
    args = []
    for num in 1..n do
      args[num-1] = gets.chomp.to_i
    end
    solve(l, args)
end
