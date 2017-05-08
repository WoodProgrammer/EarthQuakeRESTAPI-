require 'test_helper'

class QuakesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get quakes_index_url
    assert_response :success
  end

end
