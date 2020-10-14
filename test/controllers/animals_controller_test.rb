require 'test_helper'

class AnimalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animal = animals :dog_pet
    @animal_with_photo = animals :dog_with_attachment
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

  test 'should create animal with photo' do
    assert_difference 'Animal.count' do
      post animals_url, params: animal_with_photo
    end

    assert_redirected_to animals_url
  end

  test 'should not create invalid animal' do
    assert_no_changes 'Animal.count' do
      post animals_url, params: {
        animal: { animal_type_id: animal_types(:dog).id }
      }
    end

    assert_template :new
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

  test 'should update animal with photo' do
    patch animal_url @animal_with_photo, params: params
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

  def animal_with_photo
    with_photo = params
    with_photo[:animal][:photo] = fixture_file_upload('files/test.png', 'image/png')
    with_photo
  end
end
