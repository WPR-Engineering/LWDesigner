require 'test_helper'

class WiresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wire = wires(:one)
  end

  test "should get index" do
    get wires_url
    assert_response :success
  end

  test "should get new" do
    get new_wire_url
    assert_response :success
  end

  test "should create wire" do
    assert_difference('Wire.count') do
      post wires_url, params: { wire: { code: @wire.code, color: @wire.color, description: @wire.description, number: @wire.number, termination: @wire.termination, type: @wire.type } }
    end

    assert_redirected_to wire_url(Wire.last)
  end

  test "should show wire" do
    get wire_url(@wire)
    assert_response :success
  end

  test "should get edit" do
    get edit_wire_url(@wire)
    assert_response :success
  end

  test "should update wire" do
    patch wire_url(@wire), params: { wire: { code: @wire.code, color: @wire.color, description: @wire.description, number: @wire.number, termination: @wire.termination, type: @wire.type } }
    assert_redirected_to wire_url(@wire)
  end

  test "should destroy wire" do
    assert_difference('Wire.count', -1) do
      delete wire_url(@wire)
    end

    assert_redirected_to wires_url
  end
end
