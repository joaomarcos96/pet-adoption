class Animal < ApplicationRecord
  belongs_to :animal_type
  has_one :adoption

  scope :available_for_adoption, -> {
    includes(:adoption).where(adoptions: { animal_id: nil })
  }
end
