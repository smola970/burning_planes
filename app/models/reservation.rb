class Reservation < ActiveRecord::Base

  validates_uniqueness of :flight_id, :scope => [:seat]

<<<<<<< HEAD

=======
>>>>>>> 3c9d1c26f901d40b5bb1b79b81686d4749710c5d
  belongs_to :user
  belongs_to :flight
end
