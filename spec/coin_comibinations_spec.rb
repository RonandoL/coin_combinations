require('rspec')
require('coin_combinations')

describe('Fixnum#coin_combinations') do
  it("will give the correct number of pennies back") do
    expect(7.coin_combinations()).to(eq(7))
  end
end
