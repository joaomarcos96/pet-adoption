require 'test_helper'

class AnimalTest < ActiveSupport::TestCase
  test 'should save valid animal' do
    animal = animals :dog_pet
    assert animal.save
  end

  test 'should save animal with photo' do
    animal = animals :dog_with_attachment
    assert animal.save
  end

  test 'should have photo attached' do
    animal = animals :dog_pet
    file = Rails.root.join('test', 'fixtures', 'files', 'test.png')
    animal.photo.attach(io: File.open(file), filename: 'test.png')
    assert animal.valid?
    assert animal.photo.attached?
  end

  test 'should not save animal without name' do
    animal = animals :pet_without_name
    refute animal.valid?
    assert_not animal.save
  end

  test 'should not save animal without date of birth' do
    animal = animals :pet_without_date_of_birth
    refute animal.valid?
    assert_not animal.save
  end

  test 'should get animals available for adoption' do
    animals_available_for_adoption = Animal.available_for_adoption
    assert_includes animals_available_for_adoption, animals(:not_adopted_pet)
    refute_includes animals_available_for_adoption, animals(:adopted_pet)
  end
end
