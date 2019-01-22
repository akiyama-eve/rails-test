require 'rails_helper'

describe 'Create Test', js: true do
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
    fill_in('String test', with: 'John')
    find('#lesson2_a_integer_test').set(1111)
    find('[name="commit"]').click
    expect(page).to have_content("Lesson2 a was successfully created.")
    expect(Lesson2A.first.string_test).to eq 'John'
    expect(Lesson2A.first.integer_test).to eq 1111
    click_link("Back")
    # sleep(1)
    # save_screenshot("/home/aunz/Desktop/test1.jpg")

    #Show
    click_link("Show")
    expect(Lesson2A.first.boolean_test).to eq false
    click_link("Back")
    # sleep(1)
    # save_screenshot("/home/aunz/Desktop/test2.jpg")

    #Edit
    click_link('Edit')
    fill_in('String test', with: 'Prayuth')
    check('lesson2_a[boolean_test]')
    find('[name="commit"]').click
    # sleep(1)
    # save_screenshot("/home/aunz/Desktop/test3.jpg")
    click_link("Back")

    click_link("Show")
    expect(Lesson2A.first.boolean_test).to eq true
    click_link("Back")

    #Destroy
    click_link("Destroy")
    expect(page).to have_content("destroyed.")

    # sleep(1)
    # save_screenshot("/home/aunz/Desktop/test4.jpg")

    # click_link('New Lesson2 A')
    # fill_in('String test', with: 'John')
    # find('#lesson2_a_integer_test').set(1111)
    # find('[name="commit"]').click
    # expect(page).to have_content("Lesson2 a was successfully created.")
    # click_link("Back")

    # click_link('New Lesson2 A')
    # fill_in('String test', with: 'aaaaa')
    # find('#lesson2_a_integer_test').set(1222111)
    # find('[name="commit"]').click
    # expect(page).to have_content("Lesson2 a was successfully created.")
    # click_link("Back")

    # click_link("/lesson2_as/2")
    # sleep(1)
    # save_screenshot("/home/aunz/Desktop/test5.jpg")
    



  end
end
