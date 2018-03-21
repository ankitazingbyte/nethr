require 'test_helper'

class LeavesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @leave = leaves(:one)
  end

  test "should get index" do
    get leaves_url
    assert_response :success
  end

  test "should get new" do
    get new_leave_url
    assert_response :success
  end

  test "should create leave" do
    assert_difference('Leave.count') do
      post leaves_url, params: { leafe: { employee_id: @leave.employee_id, leave_from: @leave.leave_from, leave_to: @leave.leave_to, leave_type: @leave.leave_type, reason: @leave.reason, status: @leave.status } }
    end

    assert_redirected_to leave_url(Leave.last)
  end

  test "should show leave" do
    get leave_url(@leave)
    assert_response :success
  end

  test "should get edit" do
    get edit_leave_url(@leave)
    assert_response :success
  end

  test "should update leave" do
    patch leave_url(@leave), params: { leave: { employee_id: @leave.employee_id, leave_from: @leave.leave_from, leave_to: @leave.leave_to, leave_type: @leave.leave_type, reason: @leave.reason, status: @leave.status } }
    assert_redirected_to leave_url(@leave)
  end

  test "should destroy leave" do
    assert_difference('Leave.count', -1) do
      delete leave_url(@leave)
    end

    assert_redirected_to leaves_url
  end
end
