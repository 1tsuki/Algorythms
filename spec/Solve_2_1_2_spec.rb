require 'spec_helper'

RSpec.describe Solver_2_1_2 do
  it "says '3' when n = 10, m = 12, map = XXX" do
    output = capture(:stdout) do
      n = 10
      m = 12
      rows = [
        'W........WW.',
        '.WWW.....WWW',
        '....WW...WW.',
        '.........WW.',
        '.........W..',
        '..W......W..',
        '.W.W.....WW.',
        'W.W.W.....W.',
        '.W.W......W.',
        '..W.......W'
      ]

      map = Array.new(n).map{Array.new(m, nil)}
      n.times do |x|
        n.times do |y|
          map[x][y] = rows[x][y]
        end
      end

      solver = Solver_2_1_2.new(n, m, map)
      solver.solve
    end
    expect(output).to include '3'
  end
end
