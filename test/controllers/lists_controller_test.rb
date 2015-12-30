require 'test_helper'

class ListsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "index page is loaded" do 
    get :index
    assert_response :success
    
  end 
  
  
  test "To Do List form pop up/New" do
      get :new 
      assert_response :success
  end
  
  test "Item is added to the database" do
    
    
  
    assert_difference('Article.count') do
      
      post :create, article: {name: 'Some title'}
      
    end
   
   
  
    assert_redirected_to root_path
    
    assert_equal 1, list.count
    
  end
  

  
  
end
