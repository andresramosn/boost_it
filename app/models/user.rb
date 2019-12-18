class User < ApplicationRecord
  after_create :send_welcome_email
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :invitable
  has_many :tips
  has_many :lists
  has_many :shares
  has_many :properties

  private

  def send_welcome_email
    UserMailer.with(user: self).welcome.deliver_now
  end
end
