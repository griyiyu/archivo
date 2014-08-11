require 'test_helper'

class StepTest < ActiveSupport::TestCase
   test "asignar persona por email" do
     step = Step.create(email: 'ariasgri@gmail.com')
     assert step.person.email == 'ariasgri@gmail.com'
   end
end
