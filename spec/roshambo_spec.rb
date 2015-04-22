require('rspec')
require('roshambo')
require('pry')

describe('String#roshambo') do
  it("returns true if rock is the object and scissors is the argument") do
    expect("rock".beats?("scissors")).to(eq(true))
  end
  it("returns true if rock is the object and scissors is the argument") do
    expect("scissors".beats?("paper")).to(eq(true))
  end
  it("returns true if rock is the object and scissors is the argument") do
    expect("paper".beats?("rock")).to(eq(true))
  end

  it("returns message 'draw' if the object and arugument are the same") do
    expect("rock".beats?("paper")).to(eq(false))
  end
  it("returns message 'draw' if the object and arugument are the same") do
    expect("scissors".beats?("rock")).to(eq(false))
  end
  it("returns message 'draw' if the object and arugument are the same") do
   expect("paper".beats?("scissors")).to(eq(false))
  end

  it("returns message 'draw' if the object and arugument are the same") do
    expect("rock".beats?("rock")).to(eq("draw"))
  end


end
