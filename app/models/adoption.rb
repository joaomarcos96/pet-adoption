class Adoption < ApplicationRecord
  belongs_to :animal
  validates :adopter_name, presence: true, length: { minimum: 3 }
  validates :adoption_date, presence: true
  validates :animal, presence: true
end
