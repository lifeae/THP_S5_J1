require 'test_helper'

class DynamicControllerTest < ActionDispatch::IntegrationTest
  test "should get author" do
    get dynamic_author_url
    assert_response :success
  end

end
