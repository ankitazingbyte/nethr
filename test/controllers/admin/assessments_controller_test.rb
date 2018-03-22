require 'test_helper'

class Admin::AssessmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_assessment = admin_assessments(:one)
  end

  test "should get index" do
    get admin_assessments_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_assessment_url
    assert_response :success
  end

  test "should create admin_assessment" do
    assert_difference('Admin::Assessment.count') do
      post admin_assessments_url, params: { admin_assessment: { admin_department_id: @admin_assessment.admin_department_id, admin_employee_id: @admin_assessment.admin_employee_id, admin_trainer_id: @admin_assessment.admin_trainer_id, description: @admin_assessment.description, end_date: @admin_assessment.end_date, location: @admin_assessment.location, nature_of_training: @admin_assessment.nature_of_training, start_date: @admin_assessment.start_date, status: @admin_assessment.status, training_cost: @admin_assessment.training_cost, training_reason: @admin_assessment.training_reason, training_subject: @admin_assessment.training_subject, training_title: @admin_assessment.training_title, training_type: @admin_assessment.training_type, travel_cost: @admin_assessment.travel_cost } }
    end

    assert_redirected_to admin_assessment_url(Admin::Assessment.last)
  end

  test "should show admin_assessment" do
    get admin_assessment_url(@admin_assessment)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_assessment_url(@admin_assessment)
    assert_response :success
  end

  test "should update admin_assessment" do
    patch admin_assessment_url(@admin_assessment), params: { admin_assessment: { admin_department_id: @admin_assessment.admin_department_id, admin_employee_id: @admin_assessment.admin_employee_id, admin_trainer_id: @admin_assessment.admin_trainer_id, description: @admin_assessment.description, end_date: @admin_assessment.end_date, location: @admin_assessment.location, nature_of_training: @admin_assessment.nature_of_training, start_date: @admin_assessment.start_date, status: @admin_assessment.status, training_cost: @admin_assessment.training_cost, training_reason: @admin_assessment.training_reason, training_subject: @admin_assessment.training_subject, training_title: @admin_assessment.training_title, training_type: @admin_assessment.training_type, travel_cost: @admin_assessment.travel_cost } }
    assert_redirected_to admin_assessment_url(@admin_assessment)
  end

  test "should destroy admin_assessment" do
    assert_difference('Admin::Assessment.count', -1) do
      delete admin_assessment_url(@admin_assessment)
    end

    assert_redirected_to admin_assessments_url
  end
end
