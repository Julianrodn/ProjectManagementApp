class Project < ApplicationRecord
  belongs_to :company
  has_many :user_projects
  has_many :users, through: :user_projects
  has_many :stories

  validates :name, presence: true
  validates :description, presence: true
end
