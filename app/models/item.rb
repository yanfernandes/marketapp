class Item < ApplicationRecord
  belongs_to :order
  belongs_to :product
  before_create :set_total

  def set_total
    self.total = self.product.price * self.amount
  end
end
