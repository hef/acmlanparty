require 'test_helper'

class LanPartiesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lan_parties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lan_party" do
    assert_difference('LanParty.count') do
      post :create, :lan_party => { }
    end

    assert_redirected_to lan_party_path(assigns(:lan_party))
  end

  test "should show lan_party" do
    get :show, :id => lan_parties(:marchlanparty).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => lan_parties(:marchlanparty).id
    assert_response :success
  end

  test "should update lan_party" do
    put :update, :id => lan_parties(:marchlanparty).id, :lan_party => { }
    assert_redirected_to lan_party_path(assigns(:lan_party))
  end

  test "should destroy lan_party" do
    assert_difference('LanParty.count', -1) do
      delete :destroy, :id => lan_parties(:marchlanparty).id
    end

    assert_redirected_to lan_parties_path
  end
end
