require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt
  has_many :posts
  has_many :bids

  validates :password, :user_name, :email, presence: true

  validates :email, uniqueness: true


  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
