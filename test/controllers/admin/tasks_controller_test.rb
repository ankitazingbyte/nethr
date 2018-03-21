require 'test_helper'

class Admin::TasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_task = admin_tasks(:one)
  end

  test "should get index" do
    get admin_tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_task_url
    assert_response :success
  end

  test "should create admin_task" do
    assert_difference('Admin::Task.count') do
      post admin_tasks_url, params: { admin_task: { assign_to: @admin_task.assign_to, description: @admin_task.description, due_date: @admin_task.due_date, estimated_hour: @admin_task.estimated_hour, progress: @admin_task.progress, start_date: @admin_task.start_date, status: @admin_task.status, title: @admin_task.title } }
    end

    assert_redirected_to admin_task_url(Admin::Task.last)
  end

  test "should show admin_task" do
    get admin_task_url(@admin_task)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_task_url(@admin_task)
    assert_response :success
  end

  test "should update admin_task" do
    patch admin_task_url(@admin_task), params: { admin_task: { assign_to: @admin_task.assign_to, description: @admin_task.description, due_date: @admin_task.due_date, estimated_hour: @admin_task.estimated_hour, progress: @admin_task.progress, start_date: @admin_task.start_date, status: @admin_task.status, title: @admin_task.title } }
    assert_redirected_to admin_task_url(@admin_task)
  end

  test "should destroy admin_task" do
    assert_difference('Admin::Task.count', -1) do
      delete admin_task_url(@admin_task)
    end

    assert_redirected_to admin_tasks_url
  end
end
