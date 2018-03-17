require 'test_helper'

class Admin::LeavesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_leafe = admin_leaves(:one)
  end

  test "should get index" do
    get admin_leaves_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_leafe_url
    assert_response :success
  end

  test "should create admin_leafe" do
    assert_difference('Admin::Leave.count') do
      post admin_leaves_url, params: { admin_leafe: { employee_id: @admin_leafe.employee_id, leave_from: @admin_leafe.leave_from, leave_to: @admin_leafe.leave_to, leave_type: @admin_leafe.leave_type, reason: @admin_leafe.reason, status: @admin_leafe.status } }
    end

    assert_redirected_to admin_leafe_url(Admin::Leave.last)
  end

  test "should show admin_leafe" do
    get admin_leafe_url(@admin_leafe)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_leafe_url(@admin_leafe)
    assert_response :success
  end

  test "should update admin_leafe" do
    patch admin_leafe_url(@admin_leafe), params: { admin_leafe: { employee_id: @admin_leafe.employee_id, leave_from: @admin_leafe.leave_from, leave_to: @admin_leafe.leave_to, leave_type: @admin_leafe.leave_type, reason: @admin_leafe.reason, status: @admin_leafe.status } }
    assert_redirected_to admin_leafe_url(@admin_leafe)
  end

  test "should destroy admin_leafe" do
    assert_difference('Admin::Leave.count', -1) do
      delete admin_leafe_url(@admin_leafe)
    end

    assert_redirected_to admin_leaves_url
  end
end
