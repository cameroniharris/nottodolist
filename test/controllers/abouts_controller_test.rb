require 'test_helper'

class AboutsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "show page" do
    get(:show, {'id' => "1"})
    assert_response :success
    
    
  end
end
