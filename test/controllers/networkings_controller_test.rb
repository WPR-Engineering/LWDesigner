require 'test_helper'

class NetworkingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @networking = networkings(:one)
  end

  test "should get index" do
    get networkings_url
    assert_response :success
  end

  test "should get new" do
    get new_networking_url
    assert_response :success
  end

  test "should create networking" do
    assert_difference('Networking.count') do
      post networkings_url, params: { networking: { hostname: @networking.hostname, ipAddress: @networking.ipAddress, macAddress: @networking.macAddress, model: @networking.model, portCount: @networking.portCount, subnetMask: @networking.subnetMask, type: @networking.type } }
    end

    assert_redirected_to networking_url(Networking.last)
  end

  test "should show networking" do
    get networking_url(@networking)
    assert_response :success
  end

  test "should get edit" do
    get edit_networking_url(@networking)
    assert_response :success
  end

  test "should update networking" do
    patch networking_url(@networking), params: { networking: { hostname: @networking.hostname, ipAddress: @networking.ipAddress, macAddress: @networking.macAddress, model: @networking.model, portCount: @networking.portCount, subnetMask: @networking.subnetMask, type: @networking.type } }
    assert_redirected_to networking_url(@networking)
  end

  test "should destroy networking" do
    assert_difference('Networking.count', -1) do
      delete networking_url(@networking)
    end

    assert_redirected_to networkings_url
  end
end
