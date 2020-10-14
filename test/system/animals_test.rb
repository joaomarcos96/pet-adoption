require 'application_system_test_case'

class AnimalsTest < ApplicationSystemTestCase
  test 'visiting the index' do
    visit animals_url

    assert_selector 'h1', text: 'Pets for adoption'
  end

  test 'creating an animal' do
    visit animals_url

    click_on 'Add new pet'

    fill_in 'Name', with: 'Dogo'
    fill_in 'Date of birth', with: '10/08/2019'

    click_on 'Save pet'

    assert_text 'Pet was successfully added'
  end

  test 'creating an animal with photo' do
    visit animals_url

    click_on 'Add new pet'

    attach_file('animal[photo]', Rails.root.join('test', 'fixtures', 'files', 'test.png'))

    fill_in 'Name', with: 'Dogo with pic'
    fill_in 'Date of birth', with: '30/04/2018'

    click_on 'Save pet'

    assert_text 'Pet was successfully added'
  end

  test 'updating an animal' do
    visit animals_url

    click_on 'Edit', match: :first

    fill_in 'Name', with: 'Pitoquinho'
    fill_in 'Date of birth', with: '11/04/2020'

    click_on 'Save pet'

    assert_text 'Pet was successfully updated'
  end
end

