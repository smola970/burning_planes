class Airplane < ActiveRecord::Base
  attr_accessor :rows, :columns, :model
  has_many :flights
end
