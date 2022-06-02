class Character < ApplicationRecord
  has_many :stats
  has_many :skills
  has_many :spells
end
