require "test_helper"

class VouchersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vouchers_index_url
    assert_response :success
  end
end
