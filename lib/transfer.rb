class Transfer
  attr_accessor :sender, :reciever, :transfer_amount 
  
  def initialize(sender, reciever, amt)
    @sender = sender 
    @reciever = reciever
    @status = 'pending'
    @transfer_amount = amt 
  end
end
