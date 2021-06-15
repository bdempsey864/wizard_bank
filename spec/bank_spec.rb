require './lib/person'
require './lib/bank'

RSpec.describe Bank do
  before :each do
    @chase = Bank.new("JP Morgan Chase")
    @wells_fargo = Bank.new("Wells Fargo")
    @person1 = Person.new("Minerva", 1000)
    @person2 = Person.new("Luna", 500)
  end

  it 'exists' do
    expect(@chase).to be_a(Bank)
    expect(@wells_fargo).to be_a(Bank)
  end


  it 'opens an account' do
    # expect(@chase.open_account(person1)).to eq([])
    @chase.open_account(@person1)
    expect(@chase.open_account(@person1)).to eq([@person1])
  end
end