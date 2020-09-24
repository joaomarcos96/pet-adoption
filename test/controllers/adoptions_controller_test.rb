require 'test_helper'

class AdoptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animal = animals :dog_pet
  end

  test 'should get new' do
    get new_animal_adoption_url(@animal)
    assert_response :success
  end

  test 'should mark animal as adopted' do
    adoption = adoptions :adoption
    assert_difference 'Adoption.count' do
      post animal_adoptions_url(@animal), params: {
        adoption: {
          adopter_name: adoption.adopter_name,
          adoption_date: adoption.adoption_date,
          animal_id: adoption.animal_id
        }
      }
    end

    assert_redirected_to animals_url
  end
end
