class Story < ApplicationRecord
  belongs_to :project
  has_many :tickets

  validates :name, presence: true
  validates :description, presence: true
end
