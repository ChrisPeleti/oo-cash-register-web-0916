class CashRegister
  attr_accessor :total, :discount,:items
   def initialize(discount=0)
     @total=0.00
     @discount=discount
     @items=[]

   end

   def add_item(item,cost,quantity=1)
     @total+=cost*quantity
     quantity.times {@items<<item}
   end

   def apply_discount
     return "There is no discount to apply." if self.discount==0
     self.total-=(self.discount.to_f/100.00)*self.total
     "After the discount, the total comes to $#{self.total.to_i}."
   end

   def void_last_transaction
     @total=0
     @items=[]
   end



end
