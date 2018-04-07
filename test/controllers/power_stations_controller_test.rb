require 'test_helper'

class PowerStationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @power_station = power_stations(:one)
  end

  test "should get index" do
    get power_stations_url
    assert_response :success
  end

  test "should get new" do
    get new_power_station_url
    assert_response :success
  end

  test "should create power_station" do
    assert_difference('PowerStation.count') do
      post power_stations_url, params: { power_station: { hostname: @power_station.hostname, ipAddress: @power_station.ipAddress, location: @power_station.location, macAddress: @power_station.macAddress, serialNumber: @power_station.serialNumber, subnetmask: @power_station.subnetmask } }
    end

    assert_redirected_to power_station_url(PowerStation.last)
  end

  test "should show power_station" do
    get power_station_url(@power_station)
    assert_response :success
  end

  test "should get edit" do
    get edit_power_station_url(@power_station)
    assert_response :success
  end

  test "should update power_station" do
    patch power_station_url(@power_station), params: { power_station: { hostname: @power_station.hostname, ipAddress: @power_station.ipAddress, location: @power_station.location, macAddress: @power_station.macAddress, serialNumber: @power_station.serialNumber, subnetmask: @power_station.subnetmask } }
    assert_redirected_to power_station_url(@power_station)
  end

  test "should destroy power_station" do
    assert_difference('PowerStation.count', -1) do
      delete power_station_url(@power_station)
    end

    assert_redirected_to power_stations_url
  end
end
