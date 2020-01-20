class Transfer
  attr_accessor :sender, :receiver, :transfer_amount 
  
  def initialize(sender, receiver, amt)
    @sender = sender 
    @receiver = receiver
    @status = 'pending'
    @transfer_amount = amt 
  end
end
