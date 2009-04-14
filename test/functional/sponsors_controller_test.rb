require 'test_helper'

class SponsorsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sponsors)
  end

  test "should get new" do
    login_as("hef")
    get :new
    assert_response :success
  end

  test "should create sponsor" do
    assert_difference('Sponsor.count') do
      login_as("hef")
      post :create, :sponsor => { }
    end

   #assert_redirected_to sponsor_path(assigns(:sponsor))
   assert_redirected_to( :action => :index )
  end

  test "should show the website of the sponsor" do
    get :show, :id => sponsors(:google).id
   assert_response :success
#	assert_redirected_to( sponsors(:google).url )
  end

  test "should get edit" do
    login_as("hef")
    get :edit, :id => sponsors(:google).id
    assert_response :success
  end

  test "should redirect to index after updating sponsor" do
    login_as("hef")
    put :update, :id => sponsors(:google).id, :sponsor => { }
#   assert_redirected_to sponsor_path(assigns(:sponsor))
	assert_redirected_to( :action => :index )
  end

  test "should destroy sponsor" do
    assert_difference('Sponsor.count', -1) do
      login_as("hef")
      delete :destroy, :id => sponsors(:google).id
    end

    assert_redirected_to sponsors_path
  end
end
