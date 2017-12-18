class Weapon < ApplicationRecord
  belongs_to :zombie
  validates :zombie, presence: true 
end
