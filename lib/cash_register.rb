require 'pry'
class CashRegister
  attr_accessor :items, :total, :discount

  def initialize(discount=0)
    @total=0
    @discount=discount
    @items=[]
  end

  def add_item(item,price,quantity=1)
    @last_item=price*quantity
    @total+=price*quantity
    quantity.times do
      @items<<item
    end
  end

  def apply_discount
    if @discount==0
      "There is no discount to apply."
    else
      @total=(@total*((100-@discount)/100.0)).to_i
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total-=@last_item
  end

end
