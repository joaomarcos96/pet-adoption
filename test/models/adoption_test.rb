require 'test_helper'

class AdoptionTest < ActiveSupport::TestCase
  test 'should save valid adoption' do
    adoption = adoptions :adoption
    assert adoption.save
  end

  test 'should not save adoption without adopter name' do
    adoption = adoptions :adoption_without_adopter_name
    refute adoption.valid?
    assert_not adoption.save
  end

  test 'should not save adoption without adoption date' do
    adoption = adoptions :adoption_without_adoption_date
    refute adoption.valid?
    assert_not adoption.save
  end
end
