require 'test_helper'

class Admin::EvaluationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_evaluation = admin_evaluations(:one)
  end

  test "should get index" do
    get admin_evaluations_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_evaluation_url
    assert_response :success
  end

  test "should create admin_evaluation" do
    assert_difference('Admin::Evaluation.count') do
      post admin_evaluations_url, params: { admin_evaluation: { description: @admin_evaluation.description, title: @admin_evaluation.title } }
    end

    assert_redirected_to admin_evaluation_url(Admin::Evaluation.last)
  end

  test "should show admin_evaluation" do
    get admin_evaluation_url(@admin_evaluation)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_evaluation_url(@admin_evaluation)
    assert_response :success
  end

  test "should update admin_evaluation" do
    patch admin_evaluation_url(@admin_evaluation), params: { admin_evaluation: { description: @admin_evaluation.description, title: @admin_evaluation.title } }
    assert_redirected_to admin_evaluation_url(@admin_evaluation)
  end

  test "should destroy admin_evaluation" do
    assert_difference('Admin::Evaluation.count', -1) do
      delete admin_evaluation_url(@admin_evaluation)
    end

    assert_redirected_to admin_evaluations_url
  end
end
