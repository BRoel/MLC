class List < ApplicationRecord
    has_many :movies # just adds methods to my model.
    validates :name, :presence => true
end
