require 'test_helper'

class Admin::IncrementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_increment = admin_increments(:one)
  end

  test "should get index" do
    get admin_increments_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_increment_url
    assert_response :success
  end

  test "should create admin_increment" do
    assert_difference('Admin::Increment.count') do
      post admin_increments_url, params: { admin_increment: { admin_designation_id: @admin_increment.admin_designation_id, admin_employee_id: @admin_increment.admin_employee_id, current_salary: @admin_increment.current_salary, increment_salary: @admin_increment.increment_salary } }
    end

    assert_redirected_to admin_increment_url(Admin::Increment.last)
  end

  test "should show admin_increment" do
    get admin_increment_url(@admin_increment)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_increment_url(@admin_increment)
    assert_response :success
  end

  test "should update admin_increment" do
    patch admin_increment_url(@admin_increment), params: { admin_increment: { admin_designation_id: @admin_increment.admin_designation_id, admin_employee_id: @admin_increment.admin_employee_id, current_salary: @admin_increment.current_salary, increment_salary: @admin_increment.increment_salary } }
    assert_redirected_to admin_increment_url(@admin_increment)
  end

  test "should destroy admin_increment" do
    assert_difference('Admin::Increment.count', -1) do
      delete admin_increment_url(@admin_increment)
    end

    assert_redirected_to admin_increments_url
  end
end
