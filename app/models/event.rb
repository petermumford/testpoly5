class Event < ApplicationRecord
  has_many :categorisations, as: :categorisable
  has_many :categories, through: :categorisations  
end
