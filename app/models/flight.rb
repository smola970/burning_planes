class Flight < ActiveRecord::Base
  attr_accessor :flight_number, :plane_id, :origin, :destination, :date
  belongs_to :airplane
  has_many :reservations
end
