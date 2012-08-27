require 'test_helper'

class GrainsControllerTest < ActionController::TestCase
  setup do
    @grain = grains(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grains)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grain" do
    assert_difference('Grain.count') do
      post :create, grain: { content: @grain.content, participant_id: @grain.participant_id, table_id: @grain.table_id }
    end

    assert_redirected_to grain_path(assigns(:grain))
  end

  test "should show grain" do
    get :show, id: @grain
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grain
    assert_response :success
  end

  test "should update grain" do
    put :update, id: @grain, grain: { content: @grain.content, participant_id: @grain.participant_id, table_id: @grain.table_id }
    assert_redirected_to grain_path(assigns(:grain))
  end

  test "should destroy grain" do
    assert_difference('Grain.count', -1) do
      delete :destroy, id: @grain
    end

    assert_redirected_to grains_path
  end
end
