require 'spec_helper'

RSpec.describe Solver_2_1_1 do
  it "says 'YES' when n = 4, a = [1, 2, 4, 7], k = 13" do
    output = capture(:stdout) do
      n = 4
      a = [1, 2, 4, 7]
      k = 13

      solver = Solver_2_1_1.new(n, a, k)
      solver.solve
    end
    expect(output).to include 'YES'
  end
end
