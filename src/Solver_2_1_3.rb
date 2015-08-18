####################
# main code block
####################
class Solver_2_1_3
  START   = "S"
  GOAL    = "G"
  ROUTE   = "."
  WALL    = "#"
  VISITED = "x"

  def initialize(n, m, rows)
    @n = n
    @m = m
    @map = Array.new(@n).map{Array.new(@m, nil)}
    @start = {}

    for x in 0..@n-1 do
      for y in 0..@m-1 do
        @map[x][y] = rows[x][y]
        @start = {:x => x, :y => y} if rows[x][y] == START
      end
    end
  end

  def solve
    @count = 0
    @queue = []
    @next_queue = []
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
    @map.each do |x|
      puts x.join(" ")
    end
  end
end

####################
# code block for local testing
####################
if __FILE__ == $0
  n = gets.chomp.to_i
  m = gets.chomp.to_i
  rows = []
  n.times { |i| rows[i] = gets.chomp }

  solver = Solver_2_1_3.new(n, m, rows)
  solver.solve
end
