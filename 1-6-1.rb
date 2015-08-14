####################
# main code block
####################
def solve
  sorted_a = @a.sort {|a, b| (-1) * (a <=> b) }
  
  sorted_a.each_with_index do |arg, i|
    # quit if array length exceeded
    if i+3 > sorted_a.length then
      puts 0
      return
    else
      if is_triangible?(arg, sorted_a[i+1], sorted_a[i+2]) then
        puts arg + sorted_a[i+1] + sorted_a[i+2]
        return
      end
    end
  end
  puts 0
end

def is_triangible?(a, b, c)
  array = [a,b,c].sort
  return (a<b+c) ? true : false
end

####################
# code block for local testing
####################
if __FILE__ == $0
    @n = gets.chomp.to_i
    @a = []
    for i in 1..@n do
      @a[i-1] = gets.chomp.to_i
    end
    solve
end

####################
# sample input
####################
# 5
# 2
# 3
# 4
# 5
# 10

####################
# expected output
####################
# 12
