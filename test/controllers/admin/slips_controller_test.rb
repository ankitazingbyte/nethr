require 'test_helper'

class Admin::SlipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_slip = admin_slips(:one)
  end

  test "should get index" do
    get admin_slips_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_slip_url
    assert_response :success
  end

  test "should create admin_slip" do
    assert_difference('Admin::Slip.count') do
      post admin_slips_url, params: { admin_slip: { Leave_deduction: @admin_slip.Leave_deduction, admin_department_id: @admin_slip.admin_department_id, admin_designation_id: @admin_slip.admin_designation_id, admin_employee_id: @admin_slip.admin_employee_id, grand_total: @admin_slip.grand_total, loan: @admin_slip.loan, payment_by: @admin_slip.payment_by, provident_fund: @admin_slip.provident_fund, tax: @admin_slip.tax } }
    end

    assert_redirected_to admin_slip_url(Admin::Slip.last)
  end

  test "should show admin_slip" do
    get admin_slip_url(@admin_slip)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_slip_url(@admin_slip)
    assert_response :success
  end

  test "should update admin_slip" do
    patch admin_slip_url(@admin_slip), params: { admin_slip: { Leave_deduction: @admin_slip.Leave_deduction, admin_department_id: @admin_slip.admin_department_id, admin_designation_id: @admin_slip.admin_designation_id, admin_employee_id: @admin_slip.admin_employee_id, grand_total: @admin_slip.grand_total, loan: @admin_slip.loan, payment_by: @admin_slip.payment_by, provident_fund: @admin_slip.provident_fund, tax: @admin_slip.tax } }
    assert_redirected_to admin_slip_url(@admin_slip)
  end

  test "should destroy admin_slip" do
    assert_difference('Admin::Slip.count', -1) do
      delete admin_slip_url(@admin_slip)
    end

    assert_redirected_to admin_slips_url
  end
end
