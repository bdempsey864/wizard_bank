require './lib/person'
require './lib/bank'

RSpec.describe Person do
  before :each do
    @person1 = Person.new("Minerva", 1000)
    @person2 = Person.new("Luna", 500)
    @chase = Bank.new("JP Morgan Chase")
    @wells_fargo = Bank.new("Wells Fargo")
  end

  it 'exists' do
    expect(@person1).to be_a(Person)
    expect(@person2).to be_a(Person)
  end

  # it 'stores a persons cash' do
  #   expect(@person1.total_cash).to eq(1000)
  #   expect(@person2.total_cash).to eq(500)
  # end
end