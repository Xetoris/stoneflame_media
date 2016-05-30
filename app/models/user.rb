class User < ActiveRecord::Base
  has_secure_password
  validates_uniqueness_of :username, :email
  validates :password, length: {minimum: 6}, allow_blank: true
  has_many :messages
end
