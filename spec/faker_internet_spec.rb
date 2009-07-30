require File.dirname(__FILE__) + '/spec_helper.rb'

describe 'internet faker' do
  
  before do
    @tester = Faker::Internet
  end
  
  it 'should return valid email addresses' do
    @tester.email.should match(/.+@.+\.\w+/)
  end
  
  it 'should return a valid free_email' do
    @tester.free_email.should match(/.+@(gmail|hotmail|yahoo)\.com/)
  end
  
  it 'should return a valid user_name' do
    @tester.user_name.should match(/[a-z]+((_|\.)[a-z]+)?/)
  end
  
  it 'should return a valid user_name_with_arg' do
    @tester.user_name('bo peep').should match(/(bo(_|\.)peep|peep(_|\.)bo)/)
  end
  
  it 'should return a valid domain_name' do
    @tester.domain_name.should match(/\w+\.\w+/)
  end
  
  it 'should return a valid domain_word' do
    @tester.domain_word.should match(/^\w+$/)
  end
  
  it 'should return a valid domain_suffix' do
    @tester.domain_suffix.should match(/^\w+(\.\w+)?/)
  end
  
end