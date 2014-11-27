class User < ActiveRecord::Base

has_and_belongs_to_many :reservations

# has_secure_password

  validates :name, :uniqueness => true
  # validates :password_confirmation, :presence => true

end
