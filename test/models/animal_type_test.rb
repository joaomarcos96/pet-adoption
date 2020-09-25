require 'test_helper'

class AnimalTypeTest < ActiveSupport::TestCase
  test 'should save animal type' do
    animal_type = animal_types :other
    assert animal_type.save
  end
end
