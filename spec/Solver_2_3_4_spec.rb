require 'spec_helper'

RSpec.describe Solver_2_3_4 do
  it "says '7' when n = 4, w = [2, 1, 3, 2], v = [3, 2, 4, 2], w_max = 5" do
    output = capture(:stdout) do
      n = 4
      w = [2, 1, 3, 2]
      v = [3, 2, 4, 2]
      w_max = 5

      solver = Solver_2_3_4.new(n, w, v, w_max)
      solver.solve
    end
    expect(output).to include '7'
  end
end
