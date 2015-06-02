class User < ActiveRecord::Base
  has_secure_password
  has_many :beers
  validates :password_confirmation, presence: true
  validates :email, presence: true, uniqueness: {message: "I know you"}
end
