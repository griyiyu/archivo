require 'test_helper'

class StepsControllerTest < ActionController::TestCase

  test "step con persona incompleta" do
    step_hash = {person: people(:incompleto)}
    step = Step.new(step_hash)
    #binding.pry
    post :create, step: step_hash
    assert_redirected_to edit_person_path(step.person)
  end
  
  test "step con persona completa" do
    step_hash = {person: people(:completo)}
    step = Step.new(step_hash)
    step.file_record = file_records(:one)
    #binding.pry
    post :create, step: step_hash
    assert_redirected_to file_record_path(step.file_record)
  end

  test "step con email sin persona creada" do
    step_hash = {person: people(:conmail)}
    step = Step.new(step_hash)
    #binding.pry
    post :create, step: step_hash
    assert_redirected_to edit_person_path(step.person)
  end
end
