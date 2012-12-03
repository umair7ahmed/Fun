class Student < ActiveRecord::Base
  attr_accessible :name
  has_many :schedules
  has_many :courses, :through => :schedules
end
