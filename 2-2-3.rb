####################
# main code block
####################

def solve
  @result = ""
  while @s.length > 0 do
    if @s < @r then
      str_shift
    else
      str_pop
    end
  end
  puts @result
end

def str_shift
  @result = @result + @s[0]
  @s[0] = ""
  @r[-1] = ""
end

def str_pop
  @result = @result + @s[-1]
  @s[-1] = ""
  @r[0] = ""
end

####################
# code block for local testing
####################
if __FILE__ == $0
    @n = gets.chomp.to_i
    @s = gets.chomp.to_s
    @r = @s.reverse
    solve
end


####################
# sample input
####################
# 6
# ACDBCB

####################
# expected output
####################
# ABCBCD
