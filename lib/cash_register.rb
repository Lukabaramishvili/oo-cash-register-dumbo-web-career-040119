require 'pry'
class CashRegister
  
  attr_accessor :total, :discount, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def total 
    self.total = @total
  end 
  
  def add_item(titles, price, quantity = 1)
    self.total += price * quantity
    quantity.times do 
    @items << titles
  end 
  @last_transaction = price * quantity
end
  
  def apply_discount()
    if @discount > 0 
      @discount = @discount/100.to_f 
      self.total = @total - (@total * @discount)
       "After the discount, the total comes to $#{@total.to_i}."
    else 
       "There is no discount to apply."
    end
  end 
  
  
  def void_last_transaction
    @last_transaction - @total 
  end
  
end 