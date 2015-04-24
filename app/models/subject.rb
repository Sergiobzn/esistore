class Subject < ActiveRecord::Base
  has_and_belongs_to_many :users

  def self.teachers
    users = User.where(role: 'teacher')
  end

  def self.student
    users = User.where(role: 'student')
  end
end
