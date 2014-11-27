class Flight < ActiveRecord::Base
  belongs_to :airplane, foreign_key: "plane_id"
  has_many :reservations
end
