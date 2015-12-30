require 'test_helper'

class ListTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  
  test "item in database" do
      
      list = List.create(:name => 'Ken Mazaika')
      assert_not_nil( list)
    
  end
  
  
  
  
  
  
end
