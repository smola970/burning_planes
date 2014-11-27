class User < ActiveRecord::Base
  has_many :reservations

# has_secure_password

  validates :name, :uniqueness => true
  # validates :password_confirmation, :presence => true

end
