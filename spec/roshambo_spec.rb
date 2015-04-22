require('rspec')
require('roshambo')
require('pry')

describe('String#roshambo') do
  it("returns true if rock is the object and scissors is the argument") do
    expect("rock".beats?("scissors")).to(eq(true))
  end
end
