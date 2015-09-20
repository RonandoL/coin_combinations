require('rspec')
require('coin_combinations')

describe('Fixnum#coin_combinations') do
  it("will give the correct number of pennies back if less than 5") do
    expect(3.coin_combinations()).to(eq([0, 0, 0, 3]))
  end

  it("will give the correct number of nickles and pennies back") do
    expect(8.coin_combinations()).to(eq([0, 0, 1, 3]))
  end

  it("will give the correct number of dimes, nickles and pennies") do
    expect(18.coin_combinations()).to(eq([0, 1, 1, 3]))
  end
end
