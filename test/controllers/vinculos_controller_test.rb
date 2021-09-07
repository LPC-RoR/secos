require 'test_helper'

class VinculosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vinculo = vinculos(:one)
  end

  test "should get index" do
    get vinculos_url
    assert_response :success
  end

  test "should get new" do
    get new_vinculo_url
    assert_response :success
  end

  test "should create vinculo" do
    assert_difference('Vinculo.count') do
      post vinculos_url, params: { vinculo: { actividad: @vinculo.actividad, ciudad: @vinculo.ciudad, costo_vinculo_dolares: @vinculo.costo_vinculo_dolares, costo_vinculo_pesos: @vinculo.costo_vinculo_pesos, fecha_inicio: @vinculo.fecha_inicio, fecha_termino: @vinculo.fecha_termino, fondos_dolares: @vinculo.fondos_dolares, fondos_pesos: @vinculo.fondos_pesos, investigador_encargado: @vinculo.investigador_encargado, nombre_institucion: @vinculo.nombre_institucion, objetivo_actividad: @vinculo.objetivo_actividad, otro_sector_economico: @vinculo.otro_sector_economico, otro_tipo_actividad: @vinculo.otro_tipo_actividad, otro_tipo_institucion: @vinculo.otro_tipo_institucion, pais_institucion: @vinculo.pais_institucion, region_institucion: @vinculo.region_institucion, sector_economico: @vinculo.sector_economico, tipo_actividad: @vinculo.tipo_actividad, tipo_conexion: @vinculo.tipo_conexion, tipo_institucion: @vinculo.tipo_institucion } }
    end

    assert_redirected_to vinculo_url(Vinculo.last)
  end

  test "should show vinculo" do
    get vinculo_url(@vinculo)
    assert_response :success
  end

  test "should get edit" do
    get edit_vinculo_url(@vinculo)
    assert_response :success
  end

  test "should update vinculo" do
    patch vinculo_url(@vinculo), params: { vinculo: { actividad: @vinculo.actividad, ciudad: @vinculo.ciudad, costo_vinculo_dolares: @vinculo.costo_vinculo_dolares, costo_vinculo_pesos: @vinculo.costo_vinculo_pesos, fecha_inicio: @vinculo.fecha_inicio, fecha_termino: @vinculo.fecha_termino, fondos_dolares: @vinculo.fondos_dolares, fondos_pesos: @vinculo.fondos_pesos, investigador_encargado: @vinculo.investigador_encargado, nombre_institucion: @vinculo.nombre_institucion, objetivo_actividad: @vinculo.objetivo_actividad, otro_sector_economico: @vinculo.otro_sector_economico, otro_tipo_actividad: @vinculo.otro_tipo_actividad, otro_tipo_institucion: @vinculo.otro_tipo_institucion, pais_institucion: @vinculo.pais_institucion, region_institucion: @vinculo.region_institucion, sector_economico: @vinculo.sector_economico, tipo_actividad: @vinculo.tipo_actividad, tipo_conexion: @vinculo.tipo_conexion, tipo_institucion: @vinculo.tipo_institucion } }
    assert_redirected_to vinculo_url(@vinculo)
  end

  test "should destroy vinculo" do
    assert_difference('Vinculo.count', -1) do
      delete vinculo_url(@vinculo)
    end

    assert_redirected_to vinculos_url
  end
end
