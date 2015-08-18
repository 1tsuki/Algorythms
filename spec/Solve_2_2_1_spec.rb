require 'spec_helper'

RSpec.describe Solver_2_2_1 do
  it "says '6' when coins = {1=>3, 5=>2, 10=>1, 50=>3, 100=>0, 500=>2}, a = 620" do
    output = capture(:stdout) do
      coins = {
        1    =>3,
        5    =>2,
        10   =>1,
        50   =>3,
        100  =>0,
        500  =>2
       }
      a = 620

      solver = Solver_2_2_1.new(coins, a)
      solver.solve
    end
    expect(output).to include '6'
  end
end
