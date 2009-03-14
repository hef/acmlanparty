require 'test_helper'

class SponsorsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sponsors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sponsor" do
    assert_difference('Sponsor.count') do
      post :create, :sponsor => { }
    end

#   assert_redirected_to sponsor_path(assigns(:sponsor))
	assert_redirected_to( :action => :index )
  end

  test "should show the website of the sponsor" do
    get :show, :id => sponsors(:one).id
#   assert_response :success
	assert_redirected_to( sponsors(:one).url )
  end

  test "should get edit" do
    get :edit, :id => sponsors(:one).id
    assert_response :success
  end

  test "should redirect to index after updating sponsor" do
    put :update, :id => sponsors(:one).id, :sponsor => { }
#   assert_redirected_to sponsor_path(assigns(:sponsor))
	assert_redirected_to( :action => :index )
  end

  test "should destroy sponsor" do
    assert_difference('Sponsor.count', -1) do
      delete :destroy, :id => sponsors(:one).id
    end

    assert_redirected_to sponsors_path
  end
end
