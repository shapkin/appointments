class Appointment < ActiveRecord::Base
  attr_accessible :location, :notes, :title
end
