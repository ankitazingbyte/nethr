require 'test_helper'

class Admin::TaxRulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_tax_rule = admin_tax_rules(:one)
  end

  test "should get index" do
    get admin_tax_rules_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_tax_rule_url
    assert_response :success
  end

  test "should create admin_tax_rule" do
    assert_difference('Admin::TaxRule.count') do
      post admin_tax_rules_url, params: { admin_tax_rule: { name: @admin_tax_rule.name, status: @admin_tax_rule.status } }
    end

    assert_redirected_to admin_tax_rule_url(Admin::TaxRule.last)
  end

  test "should show admin_tax_rule" do
    get admin_tax_rule_url(@admin_tax_rule)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_tax_rule_url(@admin_tax_rule)
    assert_response :success
  end

  test "should update admin_tax_rule" do
    patch admin_tax_rule_url(@admin_tax_rule), params: { admin_tax_rule: { name: @admin_tax_rule.name, status: @admin_tax_rule.status } }
    assert_redirected_to admin_tax_rule_url(@admin_tax_rule)
  end

  test "should destroy admin_tax_rule" do
    assert_difference('Admin::TaxRule.count', -1) do
      delete admin_tax_rule_url(@admin_tax_rule)
    end

    assert_redirected_to admin_tax_rules_url
  end
end
