class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :profile
  has_many :teams, dependent: :destroy
  enum status: ["searching_employee", "searching_job", "currently_working", "None_of_them"], _suffix: true
  enum region: ["Tokyo", "LA", "Busan", "Cheetos", "Lalaland"], _suffix: true
  enum role: ["etc", "planner", "designer", "developer"], _suffix: true
end
