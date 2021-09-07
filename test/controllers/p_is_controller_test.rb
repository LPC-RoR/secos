require 'test_helper'

class PIsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pi = pis(:one)
  end

  test "should get index" do
    get pis_url
    assert_response :success
  end

  test "should get new" do
    get new_pi_url
    assert_response :success
  end

  test "should create pi" do
    assert_difference('Pi.count') do
      post pis_url, params: { pi: { investigador_id: @pi.investigador_id, publicacion_id: @pi.publicacion_id } }
    end

    assert_redirected_to pi_url(Pi.last)
  end

  test "should show pi" do
    get pi_url(@pi)
    assert_response :success
  end

  test "should get edit" do
    get edit_pi_url(@pi)
    assert_response :success
  end

  test "should update pi" do
    patch pi_url(@pi), params: { pi: { investigador_id: @pi.investigador_id, publicacion_id: @pi.publicacion_id } }
    assert_redirected_to pi_url(@pi)
  end

  test "should destroy pi" do
    assert_difference('Pi.count', -1) do
      delete pi_url(@pi)
    end

    assert_redirected_to pis_url
  end
end
