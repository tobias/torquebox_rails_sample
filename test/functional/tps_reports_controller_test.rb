require 'test_helper'

class TpsReportsControllerTest < ActionController::TestCase
  setup do
    @tps_report = tps_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tps_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tps_report" do
    assert_difference('TpsReport.count') do
      post :create, :tps_report => @tps_report.attributes
    end

    assert_redirected_to tps_report_path(assigns(:tps_report))
  end

  test "should show tps_report" do
    get :show, :id => @tps_report.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tps_report.to_param
    assert_response :success
  end

  test "should update tps_report" do
    put :update, :id => @tps_report.to_param, :tps_report => @tps_report.attributes
    assert_redirected_to tps_report_path(assigns(:tps_report))
  end

  test "should destroy tps_report" do
    assert_difference('TpsReport.count', -1) do
      delete :destroy, :id => @tps_report.to_param
    end

    assert_redirected_to tps_reports_path
  end
end
