require 'rspec'
require 'coin_logic'
require 'pry'

describe('Coin') do
  it('gives one penny for one cent') do
    expect(converter(1)).to(eq("1 pennies"))
  end
  it('gives one nickels for five cents') do
    expect(converter(5)).to(eq("1 nickels"))
  end
  it('gives one nickels and one pennies for six cents') do
    expect(converter(6)).to(eq("1 nickels 1 pennies"))
  end
  it('gives one dime for ten cents') do
    expect(converter(10)).to(eq("1 dimes"))
  end
  it('gives one dime for 11 cents') do
    expect(converter(11)).to(eq("1 dimes 1 pennies"))
  end
  it('gives one dime for 15 cents') do
    expect(converter(15)).to(eq("1 dimes 1 nickels"))
  end
  it('gives one dime one nickels one pennies for 16 cents') do
    expect(converter(16)).to(eq("1 dimes 1 nickels 1 pennies"))
  end
  it('gives two dimes for 20 cents') do
    expect(converter(20)).to(eq("2 dimes"))
  end
  it('gives two dimes one pennies for 21 cents') do
    expect(converter(21)).to(eq("2 dimes 1 pennies"))
  end
  it('gives one quarters for 25 cents') do
    expect(converter(25)).to(eq("1 quarters"))
  end
  it('gives one quarters one dime one nickel one penny for 41 cents') do
    expect(converter(41)).to(eq("1 quarters 1 dimes 1 nickels 1 pennies"))
  end
end
