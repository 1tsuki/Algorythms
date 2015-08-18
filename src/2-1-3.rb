####################
# main code block
####################
START   = "S"
GOAL    = "G"
ROUTE   = "."
WALL    = "#"
VISITED = "x"

@count = 0
@queue = []
@next_queue = []

def solve
  @queue.push({:x => @start[:x], :y => @start[:y]})
  puts solve_queue ? @count : "ERROR"
end

def solve_queue
  if @queue.length == 0
    return refresh_queue ? solve_queue : false
  else
    coord = @queue.shift
    tile = @map[coord[:x]][coord[:y]]
    case tile
    when GOAL
      return true
    when WALL, VISITED, nil
      return solve_queue
    when START, ROUTE
      @map[coord[:x]][coord[:y]] = VISITED
      @next_queue.push({:x => coord[:x]-1, :y => coord[:y]}) if coord[:x] >= 1
      @next_queue.push({:x => coord[:x], :y => coord[:y]-1}) if coord[:y] >= 1
      @next_queue.push({:x => coord[:x]+1, :y => coord[:y]}) if coord[:x] <= @n-2
      @next_queue.push({:x => coord[:x], :y => coord[:y]+1}) if coord[:y] <= @m-2
      return solve_queue
    else
      return false
    end
  end
end

def refresh_queue
  # quit if next_queue is empty
  return false if @next_queue.length == 0

  # increment steps
  @count = @count + 1
  @queue = @next_queue
  @next_queue = []

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
        @start = {:x => x, :y => y} if row[y] == START
      end
    end
    solve
end


####################
# sample input
####################
# 10
# 10
# #S######.#
# ......#..#
# .#.##.##.#
# .#........
# ##.##.####
# ....#....#
# .#######.#
# ....#.....
# .####.###.
# ....#...G#

####################
# expected output
####################
# 22
