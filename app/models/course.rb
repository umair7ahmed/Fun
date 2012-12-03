class Course < ActiveRecord::Base
  attr_accessible :name, :number, :professor_id
  belongs_to :professor
  has_many :schedules
  has_many :students, :through => :schedules
  
  validates :name, :presence => true
  validates :number, :presence => true
  validates :number, :numericality => {:greater_than => 0, :only_integer => true}
  
  scope :alphabetical, order('name')
end


