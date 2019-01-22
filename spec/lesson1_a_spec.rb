require 'rails_helper'
describe "Lesson1-A Model testing" do
  # bundle exec rspec ./spec/lesson1_a_spec.rb:6
  it 'should return plus of two number' do
    result = Lesson1A.plus(1,1)
    expect(result).to eq 2
  end
  # bundle exec rspec ./spec/lesson1_a_spec.rb:9
  it 'should return nil if input are not a number' do
    result = Lesson1A.plus(1,"1")
    expect(result).to eq nil
  end
  # bundle exec rspec ./spec/lesson1_a_spec.rb:16
  it 'should return plus of two number22' do
    result = Lesson1A.d(10,2)
    expect(result).to eq 8
  end

  # bundle exec rspec ./spec/lesson1_a_spec.rb:22
  it 'should return plus of two number22' do
    result = Lesson1A.t(10,2,8)
    expect(result).to eq 8
  end
  # try Lesson1A.divide
  

end
