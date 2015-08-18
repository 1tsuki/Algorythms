require 'spec_helper'

RSpec.describe Solver_1_6_2 do
  it "says 'min : 4' and 'max : 8' when l = 10, n = 3, x = [2, 6, 7]" do
    output = capture(:stdout) do
      l = 10
      n = 3
      x = [2, 6, 7]
      solver = Solver_1_6_2.new(l, n, x)
      solver.solve
    end
    expect(output).to include 'min : 4'
    expect(output).to include 'max : 8'
  end
end
