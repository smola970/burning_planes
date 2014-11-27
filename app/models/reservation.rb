class Reservation < ActiveRecord::Base

  validates_uniqueness of :flight_id, :scope => [:seat]


  belongs_to :user
  belongs_to :flight
end
