class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_and_belongs_to_many :subjects
  
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  ROLES = %w{ admin teacher student }

  validates :role,
    inclusion: { in: ROLES, message: "%{value} is not a valid role" }

  # -- Instance methods

  def admin?
    role == "admin"
  end

  def teacher?
    role == "teacher"
  end

  def student?
    role == "student"
  end

end
