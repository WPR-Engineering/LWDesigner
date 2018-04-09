require 'test_helper'

class NodeGpiOsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @node_gpio = node_gpios(:one)
  end

  test "should get index" do
    get node_gpios_url
    assert_response :success
  end

  test "should get new" do
    get new_node_gpio_url
    assert_response :success
  end

  test "should create node_gpio" do
    assert_difference('NodeGpio.count') do
      post node_gpios_url, params: { node_gpio: { hostname: @node_gpio.hostname, ipAddress: @node_gpio.ipAddress, location: @node_gpio.location, macAddress: @node_gpio.macAddress, serialNumber: @node_gpio.serialNumber, subnetmask: @node_gpio.subnetmask } }
    end

    assert_redirected_to node_gpio_url(NodeGpio.last)
  end

  test "should show node_gpio" do
    get node_gpio_url(@node_gpio)
    assert_response :success
  end

  test "should get edit" do
    get edit_node_gpio_url(@node_gpio)
    assert_response :success
  end

  test "should update node_gpio" do
    patch node_gpio_url(@node_gpio), params: { node_gpio: { hostname: @node_gpio.hostname, ipAddress: @node_gpio.ipAddress, location: @node_gpio.location, macAddress: @node_gpio.macAddress, serialNumber: @node_gpio.serialNumber, subnetmask: @node_gpio.subnetmask } }
    assert_redirected_to node_gpio_url(@node_gpio)
  end

  test "should destroy node_gpio" do
    assert_difference('NodeGpio.count', -1) do
      delete node_gpio_url(@node_gpio)
    end

    assert_redirected_to node_gpios_url
  end
end
