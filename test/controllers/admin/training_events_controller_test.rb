require 'test_helper'

class Admin::TrainingEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_training_event = admin_training_events(:one)
  end

  test "should get index" do
    get admin_training_events_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_training_event_url
    assert_response :success
  end

  test "should create admin_training_event" do
    assert_difference('Admin::TrainingEvent.count') do
      post admin_training_events_url, params: { admin_training_event: { admin_employee_id: @admin_training_event.admin_employee_id, admin_trainer_id: @admin_training_event.admin_trainer_id, location: @admin_training_event.location, nature_of_training: @admin_training_event.nature_of_training, organized_by: @admin_training_event.organized_by, sponsored_by: @admin_training_event.sponsored_by, status: @admin_training_event.status, subject: @admin_training_event.subject, title: @admin_training_event.title, training_from: @admin_training_event.training_from, training_to: @admin_training_event.training_to, training_type: @admin_training_event.training_type } }
    end

    assert_redirected_to admin_training_event_url(Admin::TrainingEvent.last)
  end

  test "should show admin_training_event" do
    get admin_training_event_url(@admin_training_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_training_event_url(@admin_training_event)
    assert_response :success
  end

  test "should update admin_training_event" do
    patch admin_training_event_url(@admin_training_event), params: { admin_training_event: { admin_employee_id: @admin_training_event.admin_employee_id, admin_trainer_id: @admin_training_event.admin_trainer_id, location: @admin_training_event.location, nature_of_training: @admin_training_event.nature_of_training, organized_by: @admin_training_event.organized_by, sponsored_by: @admin_training_event.sponsored_by, status: @admin_training_event.status, subject: @admin_training_event.subject, title: @admin_training_event.title, training_from: @admin_training_event.training_from, training_to: @admin_training_event.training_to, training_type: @admin_training_event.training_type } }
    assert_redirected_to admin_training_event_url(@admin_training_event)
  end

  test "should destroy admin_training_event" do
    assert_difference('Admin::TrainingEvent.count', -1) do
      delete admin_training_event_url(@admin_training_event)
    end

    assert_redirected_to admin_training_events_url
  end
end
