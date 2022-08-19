class CashRegister
  attr_accessor :total, :discount, :prev_payment, :items

  def initialize (discount=0)
    @total= 0
    @discount= discount
    @items = []
  end  

  def add_item(title,price,quantity=1)
    self.prev_payment = price * quantity
    self.total += prev_payment
    quantity.times do
      self.items << title
    end
  end  

  def apply_discount
    if discount == 0
      return "There is no discount to apply." 
    else 
      self.total = self.total - (self.discount * 0.01 * self.total).to_i
      "After the discount, the total comes to $#{self.total}."
    end    
  end  

  def void_

end  
