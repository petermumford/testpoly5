class Categorisation < ApplicationRecord
  belongs_to :category
  belongs_to :categorisable, polymorphic: true
end
