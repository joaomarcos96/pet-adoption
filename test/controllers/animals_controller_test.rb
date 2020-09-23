require 'test_helper'

class AnimalsControllerTest < ActionDispatch::IntegrationTest
  # setup do
  #   @animal = animals :dog_pet
  # end

  test 'should get index' do
    get animals_url
    assert_response :success
  end

  test 'should get new' do
    get new_animal_url
    assert_response :success
  end

  # test 'should create' do
  #   assert_difference -> { Animal.count } do
  #     post animals_url, params: {
  #       animal: { name: @animal.name, date_of_birth: @animal.date_of_birth, animal_type: @animal.animal_type }
  #     }
  #   end

  #   assert_redirected_to animal_url(Animal.last)
  # end
end
