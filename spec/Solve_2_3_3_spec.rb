require 'spec_helper'

RSpec.describe Solver_2_3_3 do
  it "says '10' when n = 3, w = [3, 4, 4], v = [5, 2, 3], w_max = 7" do
    output = capture(:stdout) do
      n = 3
      w = [3, 4, 2]
      v = [4, 5, 3]
      w_max = 7

      solver = Solver_2_3_3.new(n, w, v, w_max)
      solver.solve
    end
    expect(output).to include '10'
  end
end
