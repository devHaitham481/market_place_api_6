require 'test_helper'

class Api::V1::UsersControllerTest < ActionDispatch::IntegrationTest
  def setup 
    @user = users(:one)
  end

  test "should show users" do 
    get api_v1_user_url(@user), as: :json
    assert_response :success

    json_response = JSON.parse(self.response.body)
    assert_equal @user.email, json_response['email']
  end
end
