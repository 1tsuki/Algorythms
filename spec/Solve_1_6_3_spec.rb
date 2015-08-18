require 'spec_helper'

RSpec.describe Solver_1_6_3 do
  it "says 'YES' when n = 3, m = 10, k = [1, 3, 5]" do
    output = capture(:stdout) do
      n = 3
      m = 10
      k = [1, 3, 5]
      solver = Solver_1_6_3.new(n, m, k)
      solver.solve
    end
    expect(output).to include 'YES'
  end
end
