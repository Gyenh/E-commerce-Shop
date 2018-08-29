class Order < ApplicationRecord
  enum status: [:ordered, :payed, :in_progress, :sent]
  validates :name, :address, :email, presence: true
  validates :status, inclusion: statuses.keys

  belongs_to :cart
  belongs_to :user, foreign_key: true
end
