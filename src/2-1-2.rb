####################
# main code block
####################
WATER = "W"
GROUND = "."

def solve
  @count = 0
  for x in 0..@n-1 do
    for y in 0..@m-1 do
      if paint(x, y, @count) then
        @count = @count + 1
      end
      print_map
    end
  end
  puts @count
end

def paint(x, y, number)
  # abort if index is invalid
  return false if x < 0 || y < 0 || x > @n-1 || y > @m-1

  # abort if tile was not WATER
  return false if not @map[x][y] == WATER

  # update WATER to number if WATER found
  @map[x][y] = number

  # check and update nearby tiles
  paint(x-1, y-1, number)
  paint(x, y-1, number)
  paint(x+1, y-1, number)
  paint(x-1, y, number)
  paint(x, y, number)
  paint(x+1, y, number)
  paint(x-1, y+1, number)
  paint(x, y+1, number)
  paint(x+1, y+1, number)

  return true
end

def print_map
  puts "=========="
  @map.each do |x|
    puts x.join(" ")
  end
end

####################
# code block for local testing
####################
if __FILE__ == $0
    @n = gets.chomp.to_i
    @m = gets.chomp.to_i
    @map = Array.new(@n).map{Array.new(@m, nil)}
    for x in 0..@n-1 do
      row = gets.chomp
      for y in 0..@m-1 do
        @map[x][y] = row[y]
      end
    end
    solve
end


####################
# sample input
####################
# 10
# 12
# W........WW.
# .WWW.....WWW
# ....WW...WW.
# .........WW.
# .........W..
# ..W......W..
# .W.W.....WW.
# W.W.W.....W.
# .W.W......W.
# ..W.......W.

####################
# expected output
####################
# 3
