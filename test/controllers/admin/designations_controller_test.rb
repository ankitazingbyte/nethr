require 'test_helper'

class Admin::DesignationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_designation = admin_designations(:one)
  end

  test "should get index" do
    get admin_designations_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_designation_url
    assert_response :success
  end

  test "should create admin_designation" do
    assert_difference('Admin::Designation.count') do
      post admin_designations_url, params: { admin_designation: { department_id: @admin_designation.department_id, name: @admin_designation.name } }
    end

    assert_redirected_to admin_designation_url(Admin::Designation.last)
  end

  test "should show admin_designation" do
    get admin_designation_url(@admin_designation)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_designation_url(@admin_designation)
    assert_response :success
  end

  test "should update admin_designation" do
    patch admin_designation_url(@admin_designation), params: { admin_designation: { department_id: @admin_designation.department_id, name: @admin_designation.name } }
    assert_redirected_to admin_designation_url(@admin_designation)
  end

  test "should destroy admin_designation" do
    assert_difference('Admin::Designation.count', -1) do
      delete admin_designation_url(@admin_designation)
    end

    assert_redirected_to admin_designations_url
  end
end
