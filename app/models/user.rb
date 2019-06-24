class User < ActiveRecord::Base
  has_secure_password
  has_many :notes

  validates :username, presence: true
  validates :password, length: { in: 6..20 }
  validates :email, presence: true, uniqueness: true
end
