require 'spec_helper'

RSpec.describe Solver_2_2_3 do
  it "says 'ABCBCD' when n = 6, s = 'ACDBCB'" do
    output = capture(:stdout) do
      n = 6
      s = 'ACDBCB'

      solver = Solver_2_2_3.new(n, s)
      solver.solve
    end
    expect(output).to include 'ABCBCD'
  end
end
