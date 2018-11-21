require 'test_helper'

class RemindControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get remind_new_url
    assert_response :success
  end

end
