require 'test_helper'

class Admin::LoansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_loan = admin_loans(:one)
  end

  test "should get index" do
    get admin_loans_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_loan_url
    assert_response :success
  end

  test "should create admin_loan" do
    assert_difference('Admin::Loan.count') do
      post admin_loans_url, params: { admin_loan: { admin_employee_id: @admin_loan.admin_employee_id, description: @admin_loan.description, loan_amount: @admin_loan.loan_amount, loan_date: @admin_loan.loan_date, monthly_payement: @admin_loan.monthly_payement, repayment_start_date: @admin_loan.repayment_start_date, status: @admin_loan.status, title: @admin_loan.title } }
    end

    assert_redirected_to admin_loan_url(Admin::Loan.last)
  end

  test "should show admin_loan" do
    get admin_loan_url(@admin_loan)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_loan_url(@admin_loan)
    assert_response :success
  end

  test "should update admin_loan" do
    patch admin_loan_url(@admin_loan), params: { admin_loan: { admin_employee_id: @admin_loan.admin_employee_id, description: @admin_loan.description, loan_amount: @admin_loan.loan_amount, loan_date: @admin_loan.loan_date, monthly_payement: @admin_loan.monthly_payement, repayment_start_date: @admin_loan.repayment_start_date, status: @admin_loan.status, title: @admin_loan.title } }
    assert_redirected_to admin_loan_url(@admin_loan)
  end

  test "should destroy admin_loan" do
    assert_difference('Admin::Loan.count', -1) do
      delete admin_loan_url(@admin_loan)
    end

    assert_redirected_to admin_loans_url
  end
end
