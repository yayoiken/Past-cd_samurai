require 'test_helper'

class OrderProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get order_products_new_url
    assert_response :success
  end

  test "should get show" do
    get order_products_show_url
    assert_response :success
  end

end
