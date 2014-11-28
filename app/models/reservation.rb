class Reservation < ActiveRecord::Base

  validates_uniqueness_of :flight_id, :scope => [:seat]

  belongs_to :user
  belongs_to :flight
end
