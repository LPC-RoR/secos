require 'test_helper'

class PcIotrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pc_iotro = pc_iotros(:one)
  end

  test "should get index" do
    get pc_iotros_url
    assert_response :success
  end

  test "should get new" do
    get new_pc_iotro_url
    assert_response :success
  end

  test "should create pc_iotro" do
    assert_difference('PcIotro.count') do
      post pc_iotros_url, params: { pc_iotro: { investigador_id: @pc_iotro.investigador_id, presentacion_congreso_id: @pc_iotro.presentacion_congreso_id } }
    end

    assert_redirected_to pc_iotro_url(PcIotro.last)
  end

  test "should show pc_iotro" do
    get pc_iotro_url(@pc_iotro)
    assert_response :success
  end

  test "should get edit" do
    get edit_pc_iotro_url(@pc_iotro)
    assert_response :success
  end

  test "should update pc_iotro" do
    patch pc_iotro_url(@pc_iotro), params: { pc_iotro: { investigador_id: @pc_iotro.investigador_id, presentacion_congreso_id: @pc_iotro.presentacion_congreso_id } }
    assert_redirected_to pc_iotro_url(@pc_iotro)
  end

  test "should destroy pc_iotro" do
    assert_difference('PcIotro.count', -1) do
      delete pc_iotro_url(@pc_iotro)
    end

    assert_redirected_to pc_iotros_url
  end
end
