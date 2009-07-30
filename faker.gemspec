# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{faker}
  s.version = "0.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Bernie Telles"]
  s.date = %q{2009-07-29}
  s.description = %q{A fork of Benjamin Curtis' Faker gem with more us-specific options.}
  s.email = %q{btelles@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    "History.txt",
     "LICENSE",
     "License.txt",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "faker.gemspec",
     "lib/extensions/array.rb",
     "lib/extensions/object.rb",
     "lib/faker.rb",
     "lib/faker/address.rb",
     "lib/faker/company.rb",
     "lib/faker/internet.rb",
     "lib/faker/lorem.rb",
     "lib/faker/name.rb",
     "lib/faker/phone_number.rb",
     "lib/faker/version.rb",
     "spec/faker_spec.rb",
     "spec/spec_helper.rb",
     "test/test_faker.rb",
     "test/test_faker_internet.rb",
     "test/test_faker_name.rb",
     "test/test_helper.rb"
  ]
  s.homepage = %q{http://github.com/btelles/faker}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.4}
  s.summary = %q{Generates fake addresses, names and such}
  s.test_files = [
    "spec/spec_helper.rb",
     "spec/faker_spec.rb",
     "test/test_faker.rb",
     "test/test_helper.rb",
     "test/test_faker_name.rb",
     "test/test_faker_internet.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
