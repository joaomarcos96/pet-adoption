require 'test_helper'

class AnimalTest < ActiveSupport::TestCase
  test 'should save animal' do
    animal = animals :dog_pet
    assert animal.save
  end

  test 'should not save animal' do
    animal = Animal.new
    assert_not animal.save
  end

  test 'should get animals available for adoption' do
    animals_available_for_adoption = Animal.available_for_adoption
    assert_includes animals_available_for_adoption, animals(:not_adopted_pet)
    refute_includes animals_available_for_adoption, animals(:adopted_pet)
  end
end
