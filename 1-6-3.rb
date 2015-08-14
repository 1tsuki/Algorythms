####################
# main code block
####################
def solve(m, k)
  @m = m
  @sorted_k = k.sort

  for i in 0..@sorted_k.length-1 do
    for j in 0..get_max_index(m-@sorted_k[i], 0, @sorted_k.length) do
      for k in 0..get_max_index(m-@sorted_k[i]-@sorted_k[j], 0, @sorted_k.length) do
        for l in 0..get_max_index(m-@sorted_k[i]-@sorted_k[j]-@sorted_k[k], 0, @sorted_k.length) do
          if is_m?(i, j, k, l) then
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

def is_m?(i,j,k,l)
  return (@sorted_k[i] + @sorted_k[j] + @sorted_k[k] + @sorted_k[l]) == @m
end

####################
# code block for local testing
####################
if __FILE__ == $0
    n = gets.chomp.to_i
    m = gets.chomp.to_i
    k = []
    for index in 1..n do
      k[index-1] = gets.chomp.to_i
    end
    solve(m, k)
end
