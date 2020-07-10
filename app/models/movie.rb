class Movie < ApplicationRecord
    belongs_to :list # Add methods to my model.
    validates :title, :presence => true
end
