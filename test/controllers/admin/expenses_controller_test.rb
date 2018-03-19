require 'test_helper'

class Admin::ExpensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_expense = admin_expenses(:one)
  end

  test "should get index" do
    get admin_expenses_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_expense_url
    assert_response :success
  end

  test "should create admin_expense" do
    assert_difference('Admin::Expense.count') do
      post admin_expenses_url, params: { admin_expense: { amount: @admin_expense.amount, item_name: @admin_expense.item_name, purchase_date: @admin_expense.purchase_date, purchase_from: @admin_expense.purchase_from, status: @admin_expense.status } }
    end

    assert_redirected_to admin_expense_url(Admin::Expense.last)
  end

  test "should show admin_expense" do
    get admin_expense_url(@admin_expense)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_expense_url(@admin_expense)
    assert_response :success
  end

  test "should update admin_expense" do
    patch admin_expense_url(@admin_expense), params: { admin_expense: { amount: @admin_expense.amount, item_name: @admin_expense.item_name, purchase_date: @admin_expense.purchase_date, purchase_from: @admin_expense.purchase_from, status: @admin_expense.status } }
    assert_redirected_to admin_expense_url(@admin_expense)
  end

  test "should destroy admin_expense" do
    assert_difference('Admin::Expense.count', -1) do
      delete admin_expense_url(@admin_expense)
    end

    assert_redirected_to admin_expenses_url
  end
end
