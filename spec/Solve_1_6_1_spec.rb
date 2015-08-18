require 'spec_helper'

RSpec.describe Solver_1_6_1 do
  it "says '12' when n = 5, a = [2, 3, 4, 5, 10]" do
    output = capture(:stdout) do
      n = 5
      a = [2, 3, 4, 5, 10]

      solver = Solver_1_6_1.new(n, a)
      solver.solve
    end
    expect(output).to include '12'
  end
end
