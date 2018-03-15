require 'test_helper'

class JobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get jobs_url
    assert_response :success
  end

  test "should get new" do
    get new_job_url
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post jobs_url, params: { job: { age_string: @job.age_string, close_date: @job.close_date, description: @job.description, designation_id_id: @job.designation_id_id, experience: @job.experience, job_location: @job.job_location, job_type: @job.job_type, last_date_to_apply: @job.last_date_to_apply, number_of_post: @job.number_of_post, post_date: @job.post_date, salary: @job.salary, short_description: @job.short_description, status: @job.status } }
    end

    assert_redirected_to job_url(Job.last)
  end

  test "should show job" do
    get job_url(@job)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_url(@job)
    assert_response :success
  end

  test "should update job" do
    patch job_url(@job), params: { job: { age_string: @job.age_string, close_date: @job.close_date, description: @job.description, designation_id_id: @job.designation_id_id, experience: @job.experience, job_location: @job.job_location, job_type: @job.job_type, last_date_to_apply: @job.last_date_to_apply, number_of_post: @job.number_of_post, post_date: @job.post_date, salary: @job.salary, short_description: @job.short_description, status: @job.status } }
    assert_redirected_to job_url(@job)
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete job_url(@job)
    end

    assert_redirected_to jobs_url
  end
end
