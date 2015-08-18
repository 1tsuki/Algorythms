require 'spec_helper'

RSpec.describe Solver_2_2_4 do
  it "says '3' when n = 6, r = 10, x = [1, 7, 15, 20, 30, 50]" do
    output = capture(:stdout) do
      n = 6
      r = 10
      x = [1, 7, 15, 20, 30, 50]

      solver = Solver_2_2_4.new(n, r, x)
      solver.solve
    end
    expect(output).to include '3'
  end
end
