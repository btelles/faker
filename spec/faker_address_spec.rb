require File.dirname(__FILE__) + '/spec_helper.rb'

describe 'address faker' do
  
  before do
    @tester = Faker::Address
  end
  
  it 'should return a valid zip_code' do
    @tester.zip_code.should match(/^(\d{5})$|^(\d{5}\-\d{4})$/)
  end

  it 'should return a valid us state abbreviation' do
    @tester.us_state_abbr.should match(/^[A-Z]{2}$/)
  end
  
  it 'should return a valid city_prefix' do
    @tester.city_prefix.should match(/^[A-Z]{1}[a-z]+$/)
  end
  
  it 'should return a valid city_suffix' do
    @tester.city_suffix.should match(/^[a-z]+$/)
  end
  
  it 'should return a valid city' do
    @tester.city.should match(/^[A-Z]/)
  end
  
  it 'should return a valid street_suffix' do
    @tester.street_suffix.should match(/^[A-Z]{1}[a-z]+$/)
  end

  it 'should return a us_street_suffix_abbr' do
    @tester.us_street_suffix_abbr.should match(/^[A-Z]{1,4}$/)
  end

  it 'should return a valid street_name' do
    @tester.street_name.should match(/^[A-Z]/)
  end

  it 'should return a valid street_address' do
    @tester.street_address.should match(/^\d{1,5} [A-Z]/)
  end

end