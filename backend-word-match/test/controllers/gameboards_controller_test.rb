require 'test_helper'

class GameboardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gameboard = gameboards(:one)
  end

  test "should get index" do
    get gameboards_url, as: :json
    assert_response :success
  end

  test "should create gameboard" do
    assert_difference('Gameboard.count') do
      post gameboards_url, params: { gameboard: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show gameboard" do
    get gameboard_url(@gameboard), as: :json
    assert_response :success
  end

  test "should update gameboard" do
    patch gameboard_url(@gameboard), params: { gameboard: {  } }, as: :json
    assert_response 200
  end

  test "should destroy gameboard" do
    assert_difference('Gameboard.count', -1) do
      delete gameboard_url(@gameboard), as: :json
    end

    assert_response 204
  end
end
