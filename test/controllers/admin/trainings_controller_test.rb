require 'test_helper'

class Admin::TrainingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_training = admin_trainings(:one)
  end

  test "should get index" do
    get admin_trainings_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_training_url
    assert_response :success
  end

  test "should create admin_training" do
    assert_difference('Admin::Training.count') do
      post admin_trainings_url, params: { admin_training: { admin_employee_id: @admin_training.admin_employee_id, admin_trainer_id: @admin_training.admin_trainer_id, nature: @admin_training.nature, title: @admin_training.title, training_subject: @admin_training.training_subject, training_type: @admin_training.training_type } }
    end

    assert_redirected_to admin_training_url(Admin::Training.last)
  end

  test "should show admin_training" do
    get admin_training_url(@admin_training)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_training_url(@admin_training)
    assert_response :success
  end

  test "should update admin_training" do
    patch admin_training_url(@admin_training), params: { admin_training: { admin_employee_id: @admin_training.admin_employee_id, admin_trainer_id: @admin_training.admin_trainer_id, nature: @admin_training.nature, title: @admin_training.title, training_subject: @admin_training.training_subject, training_type: @admin_training.training_type } }
    assert_redirected_to admin_training_url(@admin_training)
  end

  test "should destroy admin_training" do
    assert_difference('Admin::Training.count', -1) do
      delete admin_training_url(@admin_training)
    end

    assert_redirected_to admin_trainings_url
  end
end
