require 'test_helper'

class PpFjosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pp_fjo = pp_fjos(:one)
  end

  test "should get index" do
    get pp_fjos_url
    assert_response :success
  end

  test "should get new" do
    get new_pp_fjo_url
    assert_response :success
  end

  test "should create pp_fjo" do
    assert_difference('PpFjo.count') do
      post pp_fjos_url, params: { pp_fjo: { formacion_joven_id: @pp_fjo.formacion_joven_id, producto_pme_id: @pp_fjo.producto_pme_id } }
    end

    assert_redirected_to pp_fjo_url(PpFjo.last)
  end

  test "should show pp_fjo" do
    get pp_fjo_url(@pp_fjo)
    assert_response :success
  end

  test "should get edit" do
    get edit_pp_fjo_url(@pp_fjo)
    assert_response :success
  end

  test "should update pp_fjo" do
    patch pp_fjo_url(@pp_fjo), params: { pp_fjo: { formacion_joven_id: @pp_fjo.formacion_joven_id, producto_pme_id: @pp_fjo.producto_pme_id } }
    assert_redirected_to pp_fjo_url(@pp_fjo)
  end

  test "should destroy pp_fjo" do
    assert_difference('PpFjo.count', -1) do
      delete pp_fjo_url(@pp_fjo)
    end

    assert_redirected_to pp_fjos_url
  end
end
