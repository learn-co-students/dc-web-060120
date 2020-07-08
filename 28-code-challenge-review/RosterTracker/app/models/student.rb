class Student < ApplicationRecord
  has_many :enrollments
  has_many :courses, through: :enrollments

  validates :name, presence: true, uniqueness: {case_sensitive: false}
  validates :grade, inclusion: {in: [9, 10, 11, 12], message: "must be between 9 and 12"}


  def self.sort
    return self.all.sort_by {|student| student.grade}.reverse
  end
  
end
