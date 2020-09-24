require 'test_helper'

class AnimalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animal = animals :dog_pet
  end

  test 'should get index' do
    get animals_url
    assert_response :success
  end

  test 'should get new' do
    get new_animal_url
    assert_response :success
  end

  test 'should create animal' do
    assert_difference 'Animal.count' do
      post animals_url, params: params
    end

    assert_redirected_to animals_url
  end

  test 'should show animal' do
    get animal_url @animal
    assert_response :success
  end

  test 'should get edit' do
    get edit_animal_url @animal
    assert_response :success
  end

  test 'should update animal' do
    patch animal_url @animal, params: params
    assert_redirected_to animals_url
  end

  private

  def params
    {
      animal: {
        name: @animal.name,
        date_of_birth: @animal.date_of_birth,
        animal_type_id: animal_types(:dog).id
      }
    }
  end
end
