require 'test_helper'

class StepTest < ActiveSupport::TestCase
   test "asignar persona por email" do
     step = Step.create(email: 'newmail@dominio.com')
     assert_equal('newmail@dominio.com', step.person.email)
   end
     
  test "si no es el ultimo" do
    step = steps(:entrada)
    #assert !step.delete
    step.delete
    assert step.file_record.steps.count == 3
  end
  
  test "si es el ultimo" do
    step = steps(:archivado)
    #assert step.delete
    step.delete
    assert step.file_record.steps.count == 2
  end
end
