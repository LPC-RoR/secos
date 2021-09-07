require 'test_helper'

class ProductoPmesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @producto_pme = producto_pmes(:one)
  end

  test "should get index" do
    get producto_pmes_url
    assert_response :success
  end

  test "should get new" do
    get new_producto_pme_url
    assert_response :success
  end

  test "should create producto_pme" do
    assert_difference('ProductoPme.count') do
      post producto_pmes_url, params: { producto_pme: { alcance: @producto_pme.alcance, fecha: @producto_pme.fecha, objetivo: @producto_pme.objetivo, otro_tipo_producto: @producto_pme.otro_tipo_producto, producto: @producto_pme.producto, tipo_producto: @producto_pme.tipo_producto } }
    end

    assert_redirected_to producto_pme_url(ProductoPme.last)
  end

  test "should show producto_pme" do
    get producto_pme_url(@producto_pme)
    assert_response :success
  end

  test "should get edit" do
    get edit_producto_pme_url(@producto_pme)
    assert_response :success
  end

  test "should update producto_pme" do
    patch producto_pme_url(@producto_pme), params: { producto_pme: { alcance: @producto_pme.alcance, fecha: @producto_pme.fecha, objetivo: @producto_pme.objetivo, otro_tipo_producto: @producto_pme.otro_tipo_producto, producto: @producto_pme.producto, tipo_producto: @producto_pme.tipo_producto } }
    assert_redirected_to producto_pme_url(@producto_pme)
  end

  test "should destroy producto_pme" do
    assert_difference('ProductoPme.count', -1) do
      delete producto_pme_url(@producto_pme)
    end

    assert_redirected_to producto_pmes_url
  end
end
