require 'test_helper'

class PublicoObjetivosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @publico_objetivo = publico_objetivos(:one)
  end

  test "should get index" do
    get publico_objetivos_url
    assert_response :success
  end

  test "should get new" do
    get new_publico_objetivo_url
    assert_response :success
  end

  test "should create publico_objetivo" do
    assert_difference('PublicoObjetivo.count') do
      post publico_objetivos_url, params: { publico_objetivo: { publico_objetivo: @publico_objetivo.publico_objetivo } }
    end

    assert_redirected_to publico_objetivo_url(PublicoObjetivo.last)
  end

  test "should show publico_objetivo" do
    get publico_objetivo_url(@publico_objetivo)
    assert_response :success
  end

  test "should get edit" do
    get edit_publico_objetivo_url(@publico_objetivo)
    assert_response :success
  end

  test "should update publico_objetivo" do
    patch publico_objetivo_url(@publico_objetivo), params: { publico_objetivo: { publico_objetivo: @publico_objetivo.publico_objetivo } }
    assert_redirected_to publico_objetivo_url(@publico_objetivo)
  end

  test "should destroy publico_objetivo" do
    assert_difference('PublicoObjetivo.count', -1) do
      delete publico_objetivo_url(@publico_objetivo)
    end

    assert_redirected_to publico_objetivos_url
  end
end
