####################
# main code block
####################
class Solver_2_1_2
  WATER = "W"
  GROUND = "."

  def initialize(n, m, rows)
    @n = n
    @m = m
    @map = Array.new(@n).map{Array.new(@m, nil)}
    @n.times do |x|
      @m.times do |y|
        @map[x][y] = rows[x][y]
      end
    end
  end

  def solve
    @count = 0
    for x in 0..@n-1 do
      for y in 0..@m-1 do
        if paint(x, y, @count) then
          @count = @count + 1
        end
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
    for i in -1..1 do
      for j in -1..1 do
        paint(x+i, y+j, number)
      end
    end

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
  n.times { |i| rows[i] = gets.chomp.to_s}

  solver = Solver_2_1_2.new(n, m, rows)
  solver.solve
end
