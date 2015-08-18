require 'spec_helper'

RSpec.describe Solver_2_3_2 do
  it "says '3' when n = 4, m = 4, s = 'abcd', t = 'becd'" do
    output = capture(:stdout) do
      n = 4
      m = 4
      s = 'abcd'
      t = 'becd'

      solver = Solver_2_3_2.new(n, m, s, t)
      solver.solve
    end
    expect(output).to include '3'
  end
end
