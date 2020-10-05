class Animal < ApplicationRecord
  belongs_to :animal_type
  has_one :adoption
  has_one_attached :photo
  validates :name, presence: true, length: { minimum: 2 }
  validates :animal_type, presence: true
  validates :date_of_birth, presence: true

  scope :available_for_adoption, -> {
    includes(:adoption).where(adoptions: { animal_id: nil })
  }
end
