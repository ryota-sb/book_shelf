require 'test_helper'

class ContinuesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get continues_new_url
    assert_response :success
  end

  test "should get create" do
    get continues_create_url
    assert_response :success
  end

end
