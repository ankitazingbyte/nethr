require 'test_helper'

class Admin::HolidaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_holiday = admin_holidays(:one)
  end

  test "should get index" do
    get admin_holidays_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_holiday_url
    assert_response :success
  end

  test "should create admin_holiday" do
    assert_difference('Admin::Holiday.count') do
      post admin_holidays_url, params: { admin_holiday: { date: @admin_holiday.date, occasion: @admin_holiday.occasion } }
    end

    assert_redirected_to admin_holiday_url(Admin::Holiday.last)
  end

  test "should show admin_holiday" do
    get admin_holiday_url(@admin_holiday)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_holiday_url(@admin_holiday)
    assert_response :success
  end

  test "should update admin_holiday" do
    patch admin_holiday_url(@admin_holiday), params: { admin_holiday: { date: @admin_holiday.date, occasion: @admin_holiday.occasion } }
    assert_redirected_to admin_holiday_url(@admin_holiday)
  end

  test "should destroy admin_holiday" do
    assert_difference('Admin::Holiday.count', -1) do
      delete admin_holiday_url(@admin_holiday)
    end

    assert_redirected_to admin_holidays_url
  end
end
