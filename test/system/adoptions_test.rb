require 'application_system_test_case'

class AdoptionsTest < ApplicationSystemTestCase
  test 'marking an animal as adopted' do
    visit animals_url

    click_on 'Mark as adopted', match: :first

    fill_in 'Adopter name', with: 'John'
    fill_in 'Adoption date', with: Date.today

    click_on 'Mark as adopted'

    assert_text 'Pet was successfully marked as adopted'
  end
end

