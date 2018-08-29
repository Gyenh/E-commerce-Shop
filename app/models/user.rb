class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
<<<<<<< HEAD
  :recoverable, :rememberable, :validatable

=======
         :recoverable, :rememberable, :validatable
>>>>>>> 1633745569b5f3dffbd827cca14093ea89fd77b2
  has_many :orders
end
