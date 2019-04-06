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
  
  def add_item(items, price, quantity = 1)
    self.total += price * quantity
    @items << items
    # binding.pry
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
  
  def items 
    @items << items
    # binding.pry
  end 
  
end 