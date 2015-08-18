####################
# main code block
####################

class Solver_2_2_2
  INF = 10000

  def initialize(n, s, t)
    @n = n
    @s = s
    @t = t
    @jobs = []
    n.times { |i| @jobs.push({:s => @s[i], :t => @t[i]})}
    @count = 0
  end

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
end

####################
# code block for local testing
####################
if __FILE__ == $0
  n = gets.chomp.to_i
  s = []
  t = []
  n.times { |i| s[i] = gets.chomp.to_i }
  n.times { |j| t[j] = gets.chomp.to_i }

  solver = Solver_2_2_2.new(n, s, t)
  solver.solve
end
