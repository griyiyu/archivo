require 'test_helper'

class StepTest < ActiveSupport::TestCase
   test "asignar persona por email" do
     step = Step.create(email: 'newmail@dominio.com')
     assert_equal('newmail@dominio.com', step.person.email)
   end
end
