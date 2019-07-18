require 'rspec'
require 'coin_logic'
require 'pry'

describe('Coin') do
  it('gives one penny for one cent') do
    change = Coin.new(1)
    expect(change.converter()).to(eq("1 pennies"))
  end
  it('gives one nickels for five cents') do
    change = Coin.new(5)
    expect(change.converter()).to(eq("1 nickels"))
  end
  it('gives one nickels and one pennies for six cents') do
    change = Coin.new(6)
    expect(change.converter()).to(eq("1 nickels 1 pennies"))
  end
  it('gives one dime for ten cents') do
    change = Coin.new(10)
    expect(change.converter()).to(eq("1 dimes"))
  end
  it('gives one dime for 11 cents') do
    change = Coin.new(11)
    expect(change.converter()).to(eq("1 dimes 1 pennies"))
  end
  it('gives one dime for 15 cents') do
    change = Coin.new(15)
    expect(change.converter()).to(eq("1 dimes 1 nickels"))
  end
  it('gives one dime one nickels one pennies for 16 cents') do
    change = Coin.new(16)
    expect(change.converter()).to(eq("1 dimes 1 nickels 1 pennies"))
  end
  it('gives two dimes for 20 cents') do
    change = Coin.new(20)
    expect(change.converter()).to(eq("2 dimes"))
  end
  it('gives two dimes one pennies for 21 cents') do
    change = Coin.new(21)
    expect(change.converter()).to(eq("2 dimes 1 pennies"))
  end
  it('gives one quarters for 25 cents') do
    change = Coin.new(25)
    expect(change.converter()).to(eq("1 quarters"))
  end
  it('gives one quarters one dime one nickel one penny for 41 cents') do
    change = Coin.new(41)
    expect(change.converter()).to(eq("1 quarters 1 dimes 1 nickels 1 pennies"))
  end
end
