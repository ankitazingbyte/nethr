require 'test_helper'

class Admin::EmployeeRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_employee_role = admin_employee_roles(:one)
  end

  test "should get index" do
    get admin_employee_roles_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_employee_role_url
    assert_response :success
  end

  test "should create admin_employee_role" do
    assert_difference('Admin::EmployeeRole.count') do
      post admin_employee_roles_url, params: { admin_employee_role: { name: @admin_employee_role.name, status: @admin_employee_role.status } }
    end

    assert_redirected_to admin_employee_role_url(Admin::EmployeeRole.last)
  end

  test "should show admin_employee_role" do
    get admin_employee_role_url(@admin_employee_role)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_employee_role_url(@admin_employee_role)
    assert_response :success
  end

  test "should update admin_employee_role" do
    patch admin_employee_role_url(@admin_employee_role), params: { admin_employee_role: { name: @admin_employee_role.name, status: @admin_employee_role.status } }
    assert_redirected_to admin_employee_role_url(@admin_employee_role)
  end

  test "should destroy admin_employee_role" do
    assert_difference('Admin::EmployeeRole.count', -1) do
      delete admin_employee_role_url(@admin_employee_role)
    end

    assert_redirected_to admin_employee_roles_url
  end
end
