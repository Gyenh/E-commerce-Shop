class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
has_many :orders


  after_create :send_welcome_email
  

  private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
   redirect_to root_path, alert: "Thank you for the registration"
  end

end
