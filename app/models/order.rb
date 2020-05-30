class Order < ApplicationRecord
  scope :opened, -> { where("open == true") }
  belongs_to :user
  has_many :order_items, dependent: :destroy

  def opened?
    self.open == true
  end
end
