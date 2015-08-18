require 'spec_helper'

RSpec.describe Solver_2_2_2 do
  it "says '3' when n = 5, s = [1, 2, 4, 6, 8], t = [3, 5, 7, 9, 10]" do
    output = capture(:stdout) do
      n = 5
      s = [1, 2, 4, 6, 8]
      t = [3, 5, 7, 9, 10]

      solver = Solver_2_2_2.new(n, s, t)
      solver.solve
    end
    expect(output).to include '3'
  end
end
