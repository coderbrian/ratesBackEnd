require 'test_helper'

class CalculateControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get calculate_index_url
    assert_response :success
  end

  test "should get faq" do
    get calculate_faq_url
    assert_response :success
  end

end
