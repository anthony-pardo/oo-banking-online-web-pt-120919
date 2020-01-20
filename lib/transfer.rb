class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amt)
    @sender = BankAccountsender 
    @receiver = receiver
    @status = 'pending'
    @amount = amt 
  end
  
  def valid? 
    if @sender.valid? && @receiver.valid? 
      return true 
    else 
      return false 
    end
  end
  
  def execute_transaction
    if @sender.balance < @amount 
      return "Sorry not enough funds."
    elsif !valid? 
      return "Sorry not valid"
    else 
      @reciever.balance += @amount 
      @sender.balance -= @amount 
    end
  end
end
