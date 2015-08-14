####################
# main code block
####################
def solve(args)
  # sort args desc
  sorted_args = args.sort {|a, b| (-1) * (a <=> b) }
  sorted_args.each_with_index do |arg, i|
    # quit if array length exceeded
    if i+3 > sorted_args.length then
      return 0
    else
      if is_triangible(arg, sorted_args[i+1], sorted_args[i+2]) then
        return arg + sorted_args[i+1] + sorted_args[i+2]
      end
    end
  end
end

def is_triangible(a, b, c)
  array = [a,b,c].sort
  return (a<b+c) ? true : false
end

####################
# code block for local testing
####################
if __FILE__ == $0
    n = gets.chomp.to_i
    args = []
    for num in 1..n do
      args[num-1] = gets.chomp.to_i
    end
    puts solve(args)
end
