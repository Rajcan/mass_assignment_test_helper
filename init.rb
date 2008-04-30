if RAILS_ENV == 'test'
  require File.expand_path(File.dirname(__FILE__)) + 
      "/lib/mass_assign_test_helper.rb"
end