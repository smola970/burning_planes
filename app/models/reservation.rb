class Reservation < ActiveRecord::Base

  validates_uniqueness of :flight_id, :scope => [:seat]

  attr_accessor :user_id, :flight_id, :seat

  belongs_to :user
  belongs_to :flight
end
