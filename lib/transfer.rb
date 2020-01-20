class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amt)
    @sender = sender 
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
    if self.sender.balance < @amount 
      return "Sorry not enough funds."
    elsif !valid? 
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
    elsif @status == "complete"
    else 
      self.receiver.balance += @amount 
      self.sender.balance -= @amount 
      @status = "complete"
    end
  end
end
