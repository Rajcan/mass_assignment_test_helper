class Test::Unit::TestCase
  
  # asserts that mass assignment is secure on an object
  def assert_mass_assignment_secure(model, *skip)
    
    # construct a new instance of the model
    obj = model.new()
    
    # loop through and set a value for each item
    test_hash = {}
    attributes = obj.attributes
    attributes[:id] = obj.id
    attributes.each do |attribute, value|
      test_hash[attribute] = rand(10000000000).to_s + Time.now.to_i.to_s
    end
    
    # mass assign the test hash
    obj.attributes = test_hash
    
    # see what items stuck
    failures = []
    attributes = obj.attributes_before_type_cast
    attributes[:id] = obj.id_before_type_cast
    attributes.each do |attribute, value|
      if value == test_hash[attribute] && !skip.include?(attribute) &&
          !skip.include?(attribute.to_sym)
        failures << attribute
      end
    end
    
    # raise the assertion failure
    if failures.length > 0
      flunk "Attributes [#{failures.join(",")}] are not secure."
    end
  end
  
  # defines a new test method on the test class for checking models with
  # less code
  def self.test_mass_assignment_secure(model_class, *skip)
    define_method(:test_mass_assignment_is_secure) do
      assert_mass_assignment_secure(model_class, *skip)
    end
  end
end