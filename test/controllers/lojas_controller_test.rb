require 'test_helper'

class LojasControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get lojas_new_url
    assert_response :success
  end

  test "should get index" do
    get lojas_index_url
    assert_response :success
  end

  test "should get show" do
    get lojas_show_url
    assert_response :success
  end

end
