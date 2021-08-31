class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  def total_price
    product.price * quantity
  end

  def remove_product_pcs
    puts "REMOVE ONE PCS"

    quantity = 22
  end
end
