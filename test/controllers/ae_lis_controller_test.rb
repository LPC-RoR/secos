require 'test_helper'

class AeLisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ae_li = ae_lis(:one)
  end

  test "should get index" do
    get ae_lis_url
    assert_response :success
  end

  test "should get new" do
    get new_ae_li_url
    assert_response :success
  end

  test "should create ae_li" do
    assert_difference('AeLi.count') do
      post ae_lis_url, params: { ae_li: { articulo_entrevista_id: @ae_li.articulo_entrevista_id, linea_investigacion_id: @ae_li.linea_investigacion_id } }
    end

    assert_redirected_to ae_li_url(AeLi.last)
  end

  test "should show ae_li" do
    get ae_li_url(@ae_li)
    assert_response :success
  end

  test "should get edit" do
    get edit_ae_li_url(@ae_li)
    assert_response :success
  end

  test "should update ae_li" do
    patch ae_li_url(@ae_li), params: { ae_li: { articulo_entrevista_id: @ae_li.articulo_entrevista_id, linea_investigacion_id: @ae_li.linea_investigacion_id } }
    assert_redirected_to ae_li_url(@ae_li)
  end

  test "should destroy ae_li" do
    assert_difference('AeLi.count', -1) do
      delete ae_li_url(@ae_li)
    end

    assert_redirected_to ae_lis_url
  end
end
