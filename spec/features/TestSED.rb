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
    #สร้างUserใหม่
    
    click_link('New Lesson2 A')
    sleep(1)
    fill_in('String test', with: 'John')
    find('#lesson2_a_integer_test').set(5674)
    find('[name="commit"]').click
    sleep(1)
    #ตรวจสอบว่า สร้างสำเร็จและตรงตามที่กรอกไปหรือไม่
    expect(page).to have_content("Lesson2 a was successfully created.")
    expect(Lesson2A.first.string_test).to eq 'John'

    #กลับไปหน้าแรก
    click_link('Back')
    sleep(1)
    save_screenshot("/home/saharak/back.jpg")

    #กดที่ปุ่ม Show เพื่อแสดง ข้อมูลที่สมัคร

    click_link('Show')
    sleep(1)
    save_screenshot("/home/saharak/show.jpg")

    #ทดสอบค่า ว่าตรงกันไหม

    expect(Lesson2A.first.integer_test).to eq 5674
    expect(Lesson2A.first.boolean_test).to eq false

    save_screenshot("/home/saharak/putsstring.jpg")

    #กดที่ปุ่ม Edit เพื่อแก้ไขข้อมูล

    click_link('Edit')
    sleep(1)
    #เช็คค่า ว่าชื่อตรง กับคนที่ต้องการเปลี่ยนหรือใหม่
    expect(Lesson2A.first.string_test).to eq 'John'
    #กรอกชื่อใหม่เข้าไป
    fill_in('String test', with: 'Dovetest')
    find('#lesson2_a_integer_test').set(20)
    #คลิกที่ปุ่ม เพื่อ ยืนยัน
    find('[name="commit"]').click
    sleep(1)
    #เช็คค่าว่าอแก้ไขสำเร็จ
    expect(page).to have_content("Lesson2 a was successfully updated.")
    expect(Lesson2A.first.string_test).to eq 'Dovetest'

    save_screenshot("/home/saharak/edit.jpg")

    click_link('Back')
    sleep(1)

    save_screenshot("/home/saharak/updateindex.jpg")

    click_link('Edit')
    sleep(1)
    expect(page).to have_content("Editing Lesson2 A")
    expect(Lesson2A.first.string_test).to eq 'Dovetest'
    # save_screenshot("/home/saharak/index_edit.jpg")

    click_link('Back')
    sleep(1)
    #ทดสอบ ลบ ข้อมูล
    click_link('Destroy')
    sleep(1)
    # save_screenshot("/home/saharak/Destroy.jpg")
    #เช็คว่า ลบ สำเร็จ
    expect(page).to have_content("Lesson2 a was successfully destroyed.")
#####
    click_link('New Lesson2 A')
    sleep(1)
    fill_in('String test', with: 'Dove')
    find('#lesson2_a_integer_test').set(3340)
    find('[name="commit"]').click
    sleep(1)

    click_link('Back')
    sleep(1)

    click_link('New Lesson2 A')
    sleep(1)
    fill_in('String test', with: 'Dove2')
    find('#lesson2_a_integer_test').set(0433)
    find('[name="commit"]').click
    sleep(1)

    click_link('Back')
    sleep(1)

    click_on('lesson2_as/1')

    # find(:xpath, "//a[@href='lesson2_as/1']").click

  end


end