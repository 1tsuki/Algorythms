require 'spec_helper'

RSpec.describe Solver_2_2_5 do
  it "says '34' when n = 3, l = [8, 5, 8]" do
    output = capture(:stdout) do
      n = 3
      l = [8, 5, 8]

      solver = Solver_2_2_5.new(n, l)
      solver.solve
    end
    expect(output).to include '34'
  end
end
