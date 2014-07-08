require 'test_helper'

class FileRecordsControllerTest < ActionController::TestCase
  setup do
    @file_record = file_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:file_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create file_record" do
    assert_difference('FileRecord.count') do
      post :create, file_record: { title: @file_record.title }
    end

    assert_redirected_to file_record_path(assigns(:file_record))
  end

  test "should show file_record" do
    get :show, id: @file_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @file_record
    assert_response :success
  end

  test "should update file_record" do
    patch :update, id: @file_record, file_record: { title: @file_record.title }
    assert_redirected_to file_record_path(assigns(:file_record))
  end

  test "should destroy file_record" do
    assert_difference('FileRecord.count', -1) do
      delete :destroy, id: @file_record
    end

    assert_redirected_to file_records_path
  end
end
