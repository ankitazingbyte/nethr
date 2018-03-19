require 'test_helper'

class Admin::JobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_job = admin_jobs(:one)
  end

  test "should get index" do
    get admin_jobs_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_job_url
    assert_response :success
  end

  test "should create admin_job" do
    assert_difference('Admin::Job.count') do
      post admin_jobs_url, params: { admin_job: { age: @admin_job.age, close_date: @admin_job.close_date, description: @admin_job.description, designation_id: @admin_job.designation_id, experience: @admin_job.experience, job_location: @admin_job.job_location, job_type: @admin_job.job_type, last_date_to_apply: @admin_job.last_date_to_apply, number_of_post: @admin_job.number_of_post, post_date: @admin_job.post_date, salary: @admin_job.salary, short_description: @admin_job.short_description, status: @admin_job.status } }
    end

    assert_redirected_to admin_job_url(Admin::Job.last)
  end

  test "should show admin_job" do
    get admin_job_url(@admin_job)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_job_url(@admin_job)
    assert_response :success
  end

  test "should update admin_job" do
    patch admin_job_url(@admin_job), params: { admin_job: { age: @admin_job.age, close_date: @admin_job.close_date, description: @admin_job.description, designation_id: @admin_job.designation_id, experience: @admin_job.experience, job_location: @admin_job.job_location, job_type: @admin_job.job_type, last_date_to_apply: @admin_job.last_date_to_apply, number_of_post: @admin_job.number_of_post, post_date: @admin_job.post_date, salary: @admin_job.salary, short_description: @admin_job.short_description, status: @admin_job.status } }
    assert_redirected_to admin_job_url(@admin_job)
  end

  test "should destroy admin_job" do
    assert_difference('Admin::Job.count', -1) do
      delete admin_job_url(@admin_job)
    end

    assert_redirected_to admin_jobs_url
  end
end
