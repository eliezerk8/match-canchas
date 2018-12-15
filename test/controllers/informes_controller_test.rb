require 'test_helper'

class InformesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get informes_index_url
    assert_response :success
  end

  test "should get new" do
    get informes_new_url
    assert_response :success
  end

end
