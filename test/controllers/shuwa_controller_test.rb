require 'test_helper'

class ShuwaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shuwa_index_url
    assert_response :success
  end

end
