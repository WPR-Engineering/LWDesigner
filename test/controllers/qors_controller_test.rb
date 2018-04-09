require 'test_helper'

class QorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @qor = qors(:one)
  end

  test "should get index" do
    get qors_url
    assert_response :success
  end

  test "should get new" do
    get new_qor_url
    assert_response :success
  end

  test "should create qor" do
    assert_difference('Qor.count') do
      post qors_url, params: { qor: { hostname: @qor.hostname, ipAddress: @qor.ipAddress, location: @qor.location, macAddress: @qor.macAddress, serialNumber: @qor.serialNumber, subnetMask: @qor.subnetMask } }
    end

    assert_redirected_to qor_url(Qor.last)
  end

  test "should show qor" do
    get qor_url(@qor)
    assert_response :success
  end

  test "should get edit" do
    get edit_qor_url(@qor)
    assert_response :success
  end

  test "should update qor" do
    patch qor_url(@qor), params: { qor: { hostname: @qor.hostname, ipAddress: @qor.ipAddress, location: @qor.location, macAddress: @qor.macAddress, serialNumber: @qor.serialNumber, subnetMask: @qor.subnetMask } }
    assert_redirected_to qor_url(@qor)
  end

  test "should destroy qor" do
    assert_difference('Qor.count', -1) do
      delete qor_url(@qor)
    end

    assert_redirected_to qors_url
  end
end
