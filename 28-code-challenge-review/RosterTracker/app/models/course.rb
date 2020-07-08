class Course < ApplicationRecord
  has_many :enrollments
  has_many :students, through: :enrollments
  
  def display_name
    "#{self.title} - #{self.level}"
  end
end
