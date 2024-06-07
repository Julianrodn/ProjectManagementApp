class Ticket < ApplicationRecord
  belongs_to :story

  validates :name, presence: true
  validates :description, presence: true
  validates :status, presence: true
end
