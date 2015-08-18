require 'spec_helper'

RSpec.describe Solver_2_1_3 do
  it "says '3' when n = 10, m = 12, map = XXX" do
    output = capture(:stdout) do
      n = 10
      m = 10
      rows = [
        '#S######.#',
        '......#..#',
        '.#.##.##.#',
        '.#........',
        '##.##.####',
        '....#....#',
        '.#######.#',
        '....#.....',
        '.####.###.',
        '....#...G#'
      ]

      solver = Solver_2_1_3.new(n, m, rows)
      solver.solve
    end
    expect(output).to include '22'
  end
end
