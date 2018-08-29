class Order < ApplicationRecord
  enum status: [:ordered, :payed, :in_progress, :sent]
  validates :status, inclusion: statuses.keys
  
  belongs_to :user
  belongs_to :cart
end
