require 'test_helper'

class StepsControllerTest < ActionController::TestCase

  test "step con persona incompleta" do
    step_hash = {person: people(:incompleto)}
    step = Step.new(step_hash)
    post :create, step: step_hash
    assert_redirected_to edit_person_path(step.person)
  end

end
