require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Faker" do
  it 'should numerify strings with #s' do
    Faker.numerify('###').should match(/\d{3}/)
  end
end
