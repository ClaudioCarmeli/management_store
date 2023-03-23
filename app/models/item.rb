class Item < ActiveRecord::Base
    belongs_to :product
    belongs_to :cart
    belongs_to :order
  
    # LOGIC
    def total_price
      self.quantity * self.product.price
    end
  end
  
  class Cart < ActiveRecord::Base
    has_many :items, dependent: :destroy
    has_many :products, through: :items
  
    # LOGIC
    def sub_total
      sum = 0
      self.items.each do |item|
        sum+= item.total_price
      end
      return sum
    end
  end