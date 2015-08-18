####################
# main code block
####################

INF = 10000
@jobs = []
@count = 0

def solve
  choose_job(0)
  puts @count
end

def choose_job(start)
  earliest_t = INF
  @jobs.each do |job|
    if job[:s] >= start then
      earliest_t = [job[:t], earliest_t].min
    end
  end

  if earliest_t != INF then
    @count = @count + 1
    return choose_job(earliest_t)
  else
    return
  end
end

####################
# code block for local testing
####################
if __FILE__ == $0
    @n = gets.chomp.to_i
    @s = []
    for i in 0..@n-1 do
      @s[i] = gets.chomp.to_i
    end
    @t = []
    for j in 0..@n-1 do
      @t[j] = gets.chomp.to_i
    end

    for i in 0..@n-1 do
      @jobs.push({:s => @s[i], :t => @t[i]})
    end
    solve
end


####################
# sample input
####################
# 5
# 1
# 2
# 4
# 6
# 8
# 3
# 5
# 7
# 9
# 10

####################
# expected output
####################
# 3
