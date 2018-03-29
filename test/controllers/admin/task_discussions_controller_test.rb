require 'test_helper'

class Admin::TaskDiscussionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_task_discussion = admin_task_discussions(:one)
  end

  test "should get index" do
    get admin_task_discussions_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_task_discussion_url
    assert_response :success
  end

  test "should create admin_task_discussion" do
    assert_difference('Admin::TaskDiscussion.count') do
      post admin_task_discussions_url, params: { admin_task_discussion: { admin_employee_id: @admin_task_discussion.admin_employee_id, comment: @admin_task_discussion.comment, string: @admin_task_discussion.string } }
    end

    assert_redirected_to admin_task_discussion_url(Admin::TaskDiscussion.last)
  end

  test "should show admin_task_discussion" do
    get admin_task_discussion_url(@admin_task_discussion)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_task_discussion_url(@admin_task_discussion)
    assert_response :success
  end

  test "should update admin_task_discussion" do
    patch admin_task_discussion_url(@admin_task_discussion), params: { admin_task_discussion: { admin_employee_id: @admin_task_discussion.admin_employee_id, comment: @admin_task_discussion.comment, string: @admin_task_discussion.string } }
    assert_redirected_to admin_task_discussion_url(@admin_task_discussion)
  end

  test "should destroy admin_task_discussion" do
    assert_difference('Admin::TaskDiscussion.count', -1) do
      delete admin_task_discussion_url(@admin_task_discussion)
    end

    assert_redirected_to admin_task_discussions_url
  end
end
