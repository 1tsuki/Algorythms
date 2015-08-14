####################
# main code block
####################
def solve
  # restrict target index by using binary search
  for i in 0..@sorted_k.length-1 do
    max_after_i = @m - @sorted_k[i]
    for j in 0..get_max_index(max_after_i, 0, @sorted_k.length) do
      max_after_j = max_after_i - @sorted_k[j]
      for k in 0..get_max_index(max_after_j, 0, @sorted_k.length) do
        max_after_k = max_after_j - @sorted_k[j]
        for l in 0..get_max_index(max_after_k, 0, @sorted_k.length) do
          if max_after_k - @sorted_k[l] == 0 then
            puts "YES"
            return
          end
        end
      end
    end
  end

  puts "NO"
end

# find max_index by using binary search
def get_max_index(target, min_index, max_index)
  return min_index if min_index+1 >= max_index

  index = (min_index + max_index) / 2
  if target == @sorted_k[index] then
    return index
  elsif target < @sorted_k[index] then
    return get_max_index(target, min_index, index-1)
  else
    return get_max_index(target, index+1, max_index)
  end
end


####################
# code block for local testing
####################
if __FILE__ == $0
    @n = gets.chomp.to_i
    @m = gets.chomp.to_i
    @k = []
    for i in 0..@n-1 do
      @k[i] = gets.chomp.to_i
    end
    @sorted_k = @k.sort
    solve
end


####################
# sample input
####################
# 3
# 10
# 1
# 3
# 5

####################
# expected output
####################
# YES
