require 'test_helper'

class FuenteFinanciamientosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fuente_financiamiento = fuente_financiamientos(:one)
  end

  test "should get index" do
    get fuente_financiamientos_url
    assert_response :success
  end

  test "should get new" do
    get new_fuente_financiamiento_url
    assert_response :success
  end

  test "should create fuente_financiamiento" do
    assert_difference('FuenteFinanciamiento.count') do
      post fuente_financiamientos_url, params: { fuente_financiamiento: { fondos: @fuente_financiamiento.fondos, monto_pesos: @fuente_financiamiento.monto_pesos, otro_fondo: @fuente_financiamiento.otro_fondo } }
    end

    assert_redirected_to fuente_financiamiento_url(FuenteFinanciamiento.last)
  end

  test "should show fuente_financiamiento" do
    get fuente_financiamiento_url(@fuente_financiamiento)
    assert_response :success
  end

  test "should get edit" do
    get edit_fuente_financiamiento_url(@fuente_financiamiento)
    assert_response :success
  end

  test "should update fuente_financiamiento" do
    patch fuente_financiamiento_url(@fuente_financiamiento), params: { fuente_financiamiento: { fondos: @fuente_financiamiento.fondos, monto_pesos: @fuente_financiamiento.monto_pesos, otro_fondo: @fuente_financiamiento.otro_fondo } }
    assert_redirected_to fuente_financiamiento_url(@fuente_financiamiento)
  end

  test "should destroy fuente_financiamiento" do
    assert_difference('FuenteFinanciamiento.count', -1) do
      delete fuente_financiamiento_url(@fuente_financiamiento)
    end

    assert_redirected_to fuente_financiamientos_url
  end
end
