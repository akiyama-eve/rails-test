require 'rails_helper'

describe 'test', js: true do
  # guide https://www.sitepoint.com/basics-capybara-improving-tests/
  # syntax https://gist.github.com/zhengjia/428105

  # search keyword "rails rspec capybara [ANYTHING]"

  let!(:users) do
    [
        User.create(
            email: 'user@sample.com',
            password: 'password',
            email: 'super@sample.com',
            password: 'password'
        )
    ]
    end  
  
  it 'sample capybara spec' do
    visit '/users/sign_in'
    page.find('#user_email').set('super@sample.com')
    page.find('#user_password').set('password')
    save_screenshot("/mnt/d/bananacoding/YellowPrint/RailsTesting/test1.jpg")
    find('#commit').click
    sleep(1)
    save_screenshot("/mnt/d/bananacoding/YellowPrint/RailsTesting/test2.jpg")
    click_link('Second')
    sleep(1)
    save_screenshot("/mnt/d/bananacoding/YellowPrint/RailsTesting/test3.jpg")
    click_link('Log out')
    sleep(1)
    save_screenshot("/mnt/d/bananacoding/YellowPrint/RailsTesting/test4.jpg")
  end
end
