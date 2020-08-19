require 'test_helper'

class FlatsControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get flats_name:string_url
    assert_response :success
  end

  test "should get address:string" do
    get flats_address:string_url
    assert_response :success
  end

  test "should get capacity:integer" do
    get flats_capacity:integer_url
    assert_response :success
  end

  test "should get price:string" do
    get flats_price:string_url
    assert_response :success
  end

end
