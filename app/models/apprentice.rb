class Apprentice < ApplicationRecord
  belongs_to :knight
  validates :name, presence: true
end
