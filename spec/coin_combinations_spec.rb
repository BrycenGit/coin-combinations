require('rspec')
require('pry')
require('coin_combinations')

describe('Change') do
  it('examines a number value and returns the number of pennies that can be used as change') do
    new_counter = Change.new(8)
    expect(new_counter.penny_counter()).to(eq(8))
  end

  it('examines a number value and returns the number of nickles that can be used as change') do
    new_counter = Change.new(15)
    expect(new_counter.nickle_counter()).to(eq(3))
  end

  it('examines a number value and returns the number of dimes that can be used as change') do
    new_counter = Change.new(40)
    expect(new_counter.dime_counter()).to(eq(4))
  end

  it('examines a number value and returns the number of quarters that can be used as change') do
    new_counter = Change.new(125)
    expect(new_counter.quarter_counter()).to(eq(5))
  end

  it('examines a number value and returns the number of quarters that can be used as change') do
    new_counter = Change.new(130)
    expect(new_counter.quarter_counter()).to(eq(5))
  end
  it('examines a number value and returns the number of quarters that can be used as change') do
    new_counter = Change.new(130)
    expect(new_counter.sorter()).to(eq('Your change is: 5 quarter(s), 0 dime(s), 1 nickle(s), and 0 pennies.'))
  end
  it('examines a number value and returns the number of quarters that can be used as change') do
    new_counter = Change.new(134)
    expect(new_counter.sorter()).to(eq('Your change is: 5 quarter(s), 0 dime(s), 1 nickle(s), and 4 pennies.'))
  end

  it('examines a number value and returns the change in proper denominations') do
    new_counter = Change.new(17)
    expect(new_counter.sorter()).to(eq('Your change is: 0 quarter(s), 1 dime(s), 1 nickle(s), and 2 pennies.'))
  end
end