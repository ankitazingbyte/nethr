require 'test_helper'

class Admin::FundsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_fund = admin_funds(:one)
  end

  test "should get index" do
    get admin_funds_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_fund_url
    assert_response :success
  end

  test "should create admin_fund" do
    assert_difference('Admin::Fund.count') do
      post admin_funds_url, params: { admin_fund: { admin_employee_id: @admin_fund.admin_employee_id, description: @admin_fund.description, employee_share: @admin_fund.employee_share, fund_type: @admin_fund.fund_type, organization_share: @admin_fund.organization_share } }
    end

    assert_redirected_to admin_fund_url(Admin::Fund.last)
  end

  test "should show admin_fund" do
    get admin_fund_url(@admin_fund)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_fund_url(@admin_fund)
    assert_response :success
  end

  test "should update admin_fund" do
    patch admin_fund_url(@admin_fund), params: { admin_fund: { admin_employee_id: @admin_fund.admin_employee_id, description: @admin_fund.description, employee_share: @admin_fund.employee_share, fund_type: @admin_fund.fund_type, organization_share: @admin_fund.organization_share } }
    assert_redirected_to admin_fund_url(@admin_fund)
  end

  test "should destroy admin_fund" do
    assert_difference('Admin::Fund.count', -1) do
      delete admin_fund_url(@admin_fund)
    end

    assert_redirected_to admin_funds_url
  end
end
