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

  it 'returns valid ip addresses' do
    20.times do |i|
      @tester.ip_address.should match(/\b(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\b/)
    end
  end
  
  it 'returns a valid url' do
    20.times do |i|
      @tester.url.should match(/^(?#Protocol)(?:(?:ht|f)tp(?:s?)\:\/\/|~\/|\/)?(?#Username:Password)(?:\w+:\w+@)?(?#Subdomains)(?:(?:[-\w]+\.)+(?#TopLevel Domains)(?:com|org|net|gov|mil|biz|info|mobi|name|aero|jobs|museum|travel|[a-z]{2}))(?#Port)(?::[\d]{1,5})?(?#Directories)(?:(?:(?:\/(?:[-\w~!$+|.,=]|%[a-f\d]{2})+)+|\/)+|\?|#)?(?#Query)(?:(?:\?(?:[-\w~!$+|.,*:]|%[a-f\d{2}])+=?(?:[-\w~!$+|.,*:=]|%[a-f\d]{2})*)(?:&(?:[-\w~!$+|.,*:]|%[a-f\d{2}])+=?(?:[-\w~!$+|.,*:=]|%[a-f\d]{2})*)*)*(?#Anchor)(?:#(?:[-\w~!$+|.,*:=]|%[a-f\d]{2})*)?$/)
    end
  end
  it 'returns a valid http protocol' do
   5.times do |i|
     @tester.protocol.should match(/http|ftp|https/)
   end
  end
  it 'returns a valid user_agent' do
   5.times do |i|
     @tester.user_agent.should match(/Mozilla|Opera/)
   end
  end
  
end
