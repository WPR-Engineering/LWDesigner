require 'test_helper'

class NodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @node = nodes(:one)
  end

  test "should get index" do
    get nodes_url
    assert_response :success
  end

  test "should get new" do
    get new_node_url
    assert_response :success
  end

  test "should create node" do
    assert_difference('Node.count') do
      post nodes_url, params: { node: { hostname: @node.hostname, ipAddress: @node.ipAddress, location: @node.location, nodeType: @node.nodeType, subnetMask: @node.subnetMask } }
    end

    assert_redirected_to node_url(Node.last)
  end

  test "should show node" do
    get node_url(@node)
    assert_response :success
  end

  test "should get edit" do
    get edit_node_url(@node)
    assert_response :success
  end

  test "should update node" do
    patch node_url(@node), params: { node: { hostname: @node.hostname, ipAddress: @node.ipAddress, location: @node.location, nodeType: @node.nodeType, subnetMask: @node.subnetMask } }
    assert_redirected_to node_url(@node)
  end

  test "should destroy node" do
    assert_difference('Node.count', -1) do
      delete node_url(@node)
    end

    assert_redirected_to nodes_url
  end
end
