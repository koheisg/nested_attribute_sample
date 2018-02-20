require 'test_helper'

class JobSchedulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_schedule = job_schedules(:one)
  end

  test "should get index" do
    get job_schedules_url
    assert_response :success
  end

  test "should get new" do
    get new_job_schedule_url
    assert_response :success
  end

  test "should create job_schedule" do
    assert_difference('JobSchedule.count') do
      post job_schedules_url, params: { job_schedule: { job_id: @job_schedule.job_id, name: @job_schedule.name } }
    end

    assert_redirected_to job_schedule_url(JobSchedule.last)
  end

  test "should show job_schedule" do
    get job_schedule_url(@job_schedule)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_schedule_url(@job_schedule)
    assert_response :success
  end

  test "should update job_schedule" do
    patch job_schedule_url(@job_schedule), params: { job_schedule: { job_id: @job_schedule.job_id, name: @job_schedule.name } }
    assert_redirected_to job_schedule_url(@job_schedule)
  end

  test "should destroy job_schedule" do
    assert_difference('JobSchedule.count', -1) do
      delete job_schedule_url(@job_schedule)
    end

    assert_redirected_to job_schedules_url
  end
end
