require File.dirname(__FILE__) + '/spec_helper.rb'

describe 'name faker' do
  
  before do
    @tester = Faker::Name
  end
  
  it 'should return a valid name' do
    @tester.name.should match(/(\w+\.? ?){2,3}/)
  end
  
  it 'should return a valid prefix' do
    @tester.prefix.should match(/[A-Z][a-z]+\.?/)
  end
  
  it 'should return a valid suffix' do
    @tester.suffix.should match(/[A-Z][a-z]*\.?/)
  end

  
end