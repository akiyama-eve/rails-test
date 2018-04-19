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
    click_link('Show')
    sleep(1)

    expect(page).to have_content("String test: dove")
    expect(Lesson2A.first.Datetime_test).to eq '2018-04-19 06:11:00 UTC'
  end
end