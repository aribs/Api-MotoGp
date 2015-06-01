require 'test_helper'

class PilotsControllerTest < ActionController::TestCase
  setup do
    @pilot = pilots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pilots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pilot" do
    assert_difference('Pilot.count') do
      post :create, pilot: { last_name: @pilot.last_name, n_championships: @pilot.n_championships, n_fastest_lap: @pilot.n_fastest_lap, n_pole_positions: @pilot.n_pole_positions, n_races: @pilot.n_races, n_second_position: @pilot.n_second_position, n_third_position: @pilot.n_third_position, n_victory: @pilot.n_victory, name: @pilot.name, number: @pilot.number, team: @pilot.team, url_photo: @pilot.url_photo }
    end

    assert_redirected_to pilot_path(assigns(:pilot))
  end

  test "should show pilot" do
    get :show, id: @pilot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pilot
    assert_response :success
  end

  test "should update pilot" do
    patch :update, id: @pilot, pilot: { last_name: @pilot.last_name, n_championships: @pilot.n_championships, n_fastest_lap: @pilot.n_fastest_lap, n_pole_positions: @pilot.n_pole_positions, n_races: @pilot.n_races, n_second_position: @pilot.n_second_position, n_third_position: @pilot.n_third_position, n_victory: @pilot.n_victory, name: @pilot.name, number: @pilot.number, team: @pilot.team, url_photo: @pilot.url_photo }
    assert_redirected_to pilot_path(assigns(:pilot))
  end

  test "should destroy pilot" do
    assert_difference('Pilot.count', -1) do
      delete :destroy, id: @pilot
    end

    assert_redirected_to pilots_path
  end
end
