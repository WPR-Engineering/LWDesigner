require 'test_helper'

class CablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cable = cables(:one)
  end

  test "should get index" do
    get cables_url
    assert_response :success
  end

  test "should get new" do
    get new_cable_url
    assert_response :success
  end

  test "should create cable" do
    assert_difference('Cable.count') do
      post cables_url, params: { cable: { code: @cable.code, color: @cable.color, description: @cable.description, number: @cable.number, termination: @cable.termination, type: @cable.type } }
    end

    assert_redirected_to cable_url(Cable.last)
  end

  test "should show cable" do
    get cable_url(@cable)
    assert_response :success
  end

  test "should get edit" do
    get edit_cable_url(@cable)
    assert_response :success
  end

  test "should update cable" do
    patch cable_url(@cable), params: { cable: { code: @cable.code, color: @cable.color, description: @cable.description, number: @cable.number, termination: @cable.termination, type: @cable.type } }
    assert_redirected_to cable_url(@cable)
  end

  test "should destroy cable" do
    assert_difference('Cable.count', -1) do
      delete cable_url(@cable)
    end

    assert_redirected_to cables_url
  end
end
