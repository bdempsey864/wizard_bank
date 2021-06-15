class Bank
  attr_reader :name, 
              :account,
              :balance
  def initialize(name)
    @name = name
    @account = []
    @balance = 0
  end

  def open_account(person)
    @account << person
  end
end