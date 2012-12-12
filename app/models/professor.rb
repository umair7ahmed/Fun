class Professor < ActiveRecord::Base
  attr_accessible :course_id, :email, :first_name, :last_name

  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :email, :presence => true

  validates_format_of :email, :with => /^[\w]([^@\s,:]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info|qa))$/i, :message => "shoud be a valid format"

  scope :alphabetical, order('name')

  scope :for_professor, lambda{|professor_id| where('professor_id = ?', professor_id)}
end
