Gem::Specification.new do |s|
  s.name = "mass_assignment_test_helper"
  s.version = "0.0.1"
  s.date = "2008-05-23"
  s.summary = "Helper for testing mass assignment security."
  s.email = "alan@gnoso.com"
  s.homepage = "http://github.com/alanj/mass_assignment_test_helper"
  s.description = "Mass Assignment Test Helper helps you test your activerecord models for mass assignment vulnerabilities."
  s.has_rdoc = true
  s.authors = ["Alan Johnson"]
  s.files = ["README", "lib/mass_assignment_test_helper.rb"]
  s.test_files = []
  s.rdoc_options = ["--main", "README"]
  s.extra_rdoc_files = ["README"]
  #s.add_dependency("activerecord", ["> 2.0.2"])
end