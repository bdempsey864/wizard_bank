require './lib/person'

RSpec.describe Person do
  before :each do
    @person1 = Person.new("Minerva", 1000)
    @person2 = Person.new("Luna", 500)
  end

  it 'exists' do
    expect(@person1).to be_a(Person)
    expect(@person2).to be_a(Person)
  end
end