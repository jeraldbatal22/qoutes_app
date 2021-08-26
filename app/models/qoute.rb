class Qoute < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, length: { minimum: 5 }
end
