require 'test_helper'

class Admin::TrainersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_trainer = admin_trainers(:one)
  end

  test "should get index" do
    get admin_trainers_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_trainer_url
    assert_response :success
  end

  test "should create admin_trainer" do
    assert_difference('Admin::Trainer.count') do
      post admin_trainers_url, params: { admin_trainer: { address: @admin_trainer.address, city: @admin_trainer.city, country: @admin_trainer.country, designation: @admin_trainer.designation, email: @admin_trainer.email, first_name: @admin_trainer.first_name, lastname: @admin_trainer.lastname, organization: @admin_trainer.organization, phone: @admin_trainer.phone, state: @admin_trainer.state, trainer_expertise: @admin_trainer.trainer_expertise, zip_code: @admin_trainer.zip_code } }
    end

    assert_redirected_to admin_trainer_url(Admin::Trainer.last)
  end

  test "should show admin_trainer" do
    get admin_trainer_url(@admin_trainer)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_trainer_url(@admin_trainer)
    assert_response :success
  end

  test "should update admin_trainer" do
    patch admin_trainer_url(@admin_trainer), params: { admin_trainer: { address: @admin_trainer.address, city: @admin_trainer.city, country: @admin_trainer.country, designation: @admin_trainer.designation, email: @admin_trainer.email, first_name: @admin_trainer.first_name, lastname: @admin_trainer.lastname, organization: @admin_trainer.organization, phone: @admin_trainer.phone, state: @admin_trainer.state, trainer_expertise: @admin_trainer.trainer_expertise, zip_code: @admin_trainer.zip_code } }
    assert_redirected_to admin_trainer_url(@admin_trainer)
  end

  test "should destroy admin_trainer" do
    assert_difference('Admin::Trainer.count', -1) do
      delete admin_trainer_url(@admin_trainer)
    end

    assert_redirected_to admin_trainers_url
  end
end
