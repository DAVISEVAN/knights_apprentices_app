class Knight < ApplicationRecord
    has_many :apprentices, dependent: :destroy
    validates :name, presence: true
end
