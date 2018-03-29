require 'test_helper'

class Admin::TaskFilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_task_file = admin_task_files(:one)
  end

  test "should get index" do
    get admin_task_files_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_task_file_url
    assert_response :success
  end

  test "should create admin_task_file" do
    assert_difference('Admin::TaskFile.count') do
      post admin_task_files_url, params: { admin_task_file: { admin_employee_id: @admin_task_file.admin_employee_id, attachment: @admin_task_file.attachment } }
    end

    assert_redirected_to admin_task_file_url(Admin::TaskFile.last)
  end

  test "should show admin_task_file" do
    get admin_task_file_url(@admin_task_file)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_task_file_url(@admin_task_file)
    assert_response :success
  end

  test "should update admin_task_file" do
    patch admin_task_file_url(@admin_task_file), params: { admin_task_file: { admin_employee_id: @admin_task_file.admin_employee_id, attachment: @admin_task_file.attachment } }
    assert_redirected_to admin_task_file_url(@admin_task_file)
  end

  test "should destroy admin_task_file" do
    assert_difference('Admin::TaskFile.count', -1) do
      delete admin_task_file_url(@admin_task_file)
    end

    assert_redirected_to admin_task_files_url
  end
end
