require 'rails_helper'
describe "User Test model with FactoryBot" do
  # see more https://github.com/thoughtbot/factory_bot/wiki
  # init data
  let(:user) do
    FactoryBot.create(:user, {
      email: "chattipong1@hotmail.com",
      encrypted_password: "1234",
    })
  end

  let(:user_int) do
    FactoryBot.create(:user,encrypted_password: "8888")
  end

  before do
    user
    user_int
  end

  # try to create new model and test CRUD

  # bundle exec rspec ./spec/models/user_spec.rb:25
  it 'should read' do
    expect(user.encrypted_password).to eq "1234"
  end

  # bundle exec rspec ./spec/models/user_spec.rb:37
  it 'should update' do
    # check old integer_test
    expect(user.encrypted_password).to eq "1234"
    # update integer_test
    user.encrypted_password = "9876"
    user.save
    # check new integer_test
    user_new = User.find(user.id)
    expect(user_new.encrypted_password).to eq "9876"
  end

  # bundle exec rspec ./spec/models/user_spec.rb:47
  it 'should can delete' do
    # check record exist
    expect(User.find(user.id).blank?).to be_falsey
    # delete record
    user.destroy
    # check deleted
    expect(User.where(id: user.id).first.blank?).to be_truthy
  end

  # bundle exec rspec ./spec/models/user_spec.rb:53
  it 'should read user_int' do
    puts user_int.inspect
    expect(user_int.integer_test).to eq "8888"
  end
  

end
