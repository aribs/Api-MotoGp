require 'test_helper'

class LegendsControllerTest < ActionController::TestCase
  setup do
    @legend = legends(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:legends)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create legend" do
    assert_difference('Legend.count') do
      post :create, legend: { last_name: @legend.last_name, n_fastest_lap: @legend.n_fastest_lap, n_pole_positions: @legend.n_pole_positions, n_races: @legend.n_races, n_second_position: @legend.n_second_position, n_third_position: @legend.n_third_position, n_victory: @legend.n_victory, name: @legend.name, number: @legend.number, url_photo: @legend.url_photo }
    end

    assert_redirected_to legend_path(assigns(:legend))
  end

  test "should show legend" do
    get :show, id: @legend
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @legend
    assert_response :success
  end

  test "should update legend" do
    patch :update, id: @legend, legend: { last_name: @legend.last_name, n_fastest_lap: @legend.n_fastest_lap, n_pole_positions: @legend.n_pole_positions, n_races: @legend.n_races, n_second_position: @legend.n_second_position, n_third_position: @legend.n_third_position, n_victory: @legend.n_victory, name: @legend.name, number: @legend.number, url_photo: @legend.url_photo }
    assert_redirected_to legend_path(assigns(:legend))
  end

  test "should destroy legend" do
    assert_difference('Legend.count', -1) do
      delete :destroy, id: @legend
    end

    assert_redirected_to legends_path
  end
end
