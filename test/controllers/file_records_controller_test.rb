require 'test_helper'

class FileRecordsControllerTest < ActionController::TestCase
  def setup
    sign_in users :emmet
  end

  test "debe existir el index" do
    #user = User.create(email: 'algo@gmail.com' , encrypted_password: '12345678')
    #binding.pry
    
    get :index
    assert_response :success
    assert_not_nil assigns :file_records
  end

  test "debe existir el new" do
    get :new
    assert_response :success
  end
  
  test "deberia encontrar un expediente a partir de un texto desde el controlador" do
    get :index, { title: 'mar'}
    assert_response :success, 'no fue exitoso'
    assert_not_nil assigns :file_records
  end

end
