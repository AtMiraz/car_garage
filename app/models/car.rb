class Car < ApplicationRecord
  belongs_to :agency
  validates :name, :year, prescence: true

end
