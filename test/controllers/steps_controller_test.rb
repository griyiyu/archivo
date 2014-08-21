require 'test_helper'

class StepsControllerTest < ActionController::TestCase

  test "step con persona incompleta" do
    step = {step: {email: 'incompleto@gmail.com', file_record_id: file_records(:one).id}}
    post :create, step
    assert_redirected_to edit_person_path(people(:incompleto))
  end
  
  test "step con persona completa" do
    step = {step: {email: 'completo@gmail.com', file_record_id: file_records(:one).id}}
    post :create, step
    assert_redirected_to file_record_path(file_records(:one))
  end

  test "step con email sin persona creada" do
    step = {step: {email: 'nuevo@gmail.com', file_record: file_records(:one)}}
    post :create, step
    assert_redirected_to edit_person_path(Person.last)
    assert_not_nil assigns :step
  end

end
