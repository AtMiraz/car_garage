class Car < ApplicationRecord
  belongs_to :agency
  validates_presence_of :name, :year

end
