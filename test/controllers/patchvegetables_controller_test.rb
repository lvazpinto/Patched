require 'test_helper'

class PatchVegetablesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get patchvegetables_create_url
    assert_response :success
  end

end
