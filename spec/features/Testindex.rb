require 'rails_helper'

describe 'Lesson3-A introduce to integration test', js: true do
  # guide https://www.sitepoint.com/basics-capybara-improving-tests/
  # syntax https://gist.github.com/zhengjia/428105

  # search keyword "rails rspec capybara [ANYTHING]"

  let(:super_admin) { create_super_admin(email: 'super@user.com') }
  before do
    sign_in super_admin
  end

  it 'sample capybara spec' do
    visit '/lesson2_as'
    click_link('New Lesson2 A')
    sleep(1)
    fill_in('String test', with: 'John')
    find('#lesson2_a_integer_test').set(5674)
    find('[name="commit"]').click
    sleep(1)

    expect(page).to have_content("Lesson2 a was successfully created.")
    expect(Lesson2A.first.string_test).to eq 'John'
  end
end