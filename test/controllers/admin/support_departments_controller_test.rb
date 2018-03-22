require 'test_helper'

class Admin::SupportDepartmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_support_department = admin_support_departments(:one)
  end

  test "should get index" do
    get admin_support_departments_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_support_department_url
    assert_response :success
  end

  test "should create admin_support_department" do
    assert_difference('Admin::SupportDepartment.count') do
      post admin_support_departments_url, params: { admin_support_department: { email: @admin_support_department.email, name: @admin_support_department.name, show_in_client: @admin_support_department.show_in_client } }
    end

    assert_redirected_to admin_support_department_url(Admin::SupportDepartment.last)
  end

  test "should show admin_support_department" do
    get admin_support_department_url(@admin_support_department)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_support_department_url(@admin_support_department)
    assert_response :success
  end

  test "should update admin_support_department" do
    patch admin_support_department_url(@admin_support_department), params: { admin_support_department: { email: @admin_support_department.email, name: @admin_support_department.name, show_in_client: @admin_support_department.show_in_client } }
    assert_redirected_to admin_support_department_url(@admin_support_department)
  end

  test "should destroy admin_support_department" do
    assert_difference('Admin::SupportDepartment.count', -1) do
      delete admin_support_department_url(@admin_support_department)
    end

    assert_redirected_to admin_support_departments_url
  end
end
