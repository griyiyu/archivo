require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  test "la persona esta completa" do
    person = Person.new(email: 'a', name: 'a', dni: 1)
    assert person.completed?
  end
  #index de step
  
  test "la persona esta no completa" do
    person = Person.new
    assert !person.completed?
  end
  #edit person
end

# controler de step
