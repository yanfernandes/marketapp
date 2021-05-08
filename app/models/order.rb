class Order < ApplicationRecord
  has_many :items
  accepts_nested_attributes_for :items, :allow_destroy => true
  after_create :set_total

  def set_total
    self.total = self.items.sum(:total)
    self.save
  end
end
