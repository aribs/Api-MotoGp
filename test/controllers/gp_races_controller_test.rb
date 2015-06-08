require 'test_helper'

class GpRacesControllerTest < ActionController::TestCase
  setup do
    @gp_race = gp_races(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gp_races)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gp_race" do
    assert_difference('GpRace.count') do
      post :create, gp_race: { attendance_2014: @gp_race.attendance_2014, fast_lap_2014: @gp_race.fast_lap_2014, latitude: @gp_race.latitude, location: @gp_race.location, longitude: @gp_race.longitude, name: @gp_race.name, pole_2014: @gp_race.pole_2014, winner_2014: @gp_race.winner_2014 }
    end

    assert_redirected_to gp_race_path(assigns(:gp_race))
  end

  test "should show gp_race" do
    get :show, id: @gp_race
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gp_race
    assert_response :success
  end

  test "should update gp_race" do
    patch :update, id: @gp_race, gp_race: { attendance_2014: @gp_race.attendance_2014, fast_lap_2014: @gp_race.fast_lap_2014, latitude: @gp_race.latitude, location: @gp_race.location, longitude: @gp_race.longitude, name: @gp_race.name, pole_2014: @gp_race.pole_2014, winner_2014: @gp_race.winner_2014 }
    assert_redirected_to gp_race_path(assigns(:gp_race))
  end

  test "should destroy gp_race" do
    assert_difference('GpRace.count', -1) do
      delete :destroy, id: @gp_race
    end

    assert_redirected_to gp_races_path
  end
end
