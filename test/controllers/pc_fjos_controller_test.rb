require 'test_helper'

class PcFjosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pc_fjo = pc_fjos(:one)
  end

  test "should get index" do
    get pc_fjos_url
    assert_response :success
  end

  test "should get new" do
    get new_pc_fjo_url
    assert_response :success
  end

  test "should create pc_fjo" do
    assert_difference('PcFjo.count') do
      post pc_fjos_url, params: { pc_fjo: { formacion_joven_id: @pc_fjo.formacion_joven_id, presentacion_congreso_id: @pc_fjo.presentacion_congreso_id } }
    end

    assert_redirected_to pc_fjo_url(PcFjo.last)
  end

  test "should show pc_fjo" do
    get pc_fjo_url(@pc_fjo)
    assert_response :success
  end

  test "should get edit" do
    get edit_pc_fjo_url(@pc_fjo)
    assert_response :success
  end

  test "should update pc_fjo" do
    patch pc_fjo_url(@pc_fjo), params: { pc_fjo: { formacion_joven_id: @pc_fjo.formacion_joven_id, presentacion_congreso_id: @pc_fjo.presentacion_congreso_id } }
    assert_redirected_to pc_fjo_url(@pc_fjo)
  end

  test "should destroy pc_fjo" do
    assert_difference('PcFjo.count', -1) do
      delete pc_fjo_url(@pc_fjo)
    end

    assert_redirected_to pc_fjos_url
  end
end
