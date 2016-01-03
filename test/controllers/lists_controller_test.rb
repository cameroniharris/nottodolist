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
    
      post :create, list: {name: 'Some title'}

    assert_redirected_to article_path(assigns(:list))
    assert_equal 'Article was successfully created.', flash[:notice]
    
  end
  

  
  
end
