require 'test_helper'

class DatosCentrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @datos_centro = datos_centros(:one)
  end

  test "should get index" do
    get datos_centros_url
    assert_response :success
  end

  test "should get new" do
    get new_datos_centro_url
    assert_response :success
  end

  test "should create datos_centro" do
    assert_difference('DatosCentro.count') do
      post datos_centros_url, params: { datos_centro: { acronimo: @datos_centro.acronimo, admin_ejecutivo_rendiciones: @datos_centro.admin_ejecutivo_rendiciones, admin_email: @datos_centro.admin_email, admin_nombre: @datos_centro.admin_nombre, admin_telefono: @datos_centro.admin_telefono, ambito: @datos_centro.ambito, cientif_email: @datos_centro.cientif_email, cientif_nombre: @datos_centro.cientif_nombre, codigo_proyecto: @datos_centro.codigo_proyecto, decreto_aprobatorio: @datos_centro.decreto_aprobatorio, descripcion: @datos_centro.descripcion, direccion: @datos_centro.direccion, doc_aprobatorio: @datos_centro.doc_aprobatorio, doc_extension: @datos_centro.doc_extension, estado: @datos_centro.estado, etapa: @datos_centro.etapa, fax: @datos_centro.fax, fecha_decreto_aprobatorio: @datos_centro.fecha_decreto_aprobatorio, fecha_inicio: @datos_centro.fecha_inicio, fecha_termino: @datos_centro.fecha_termino, fecha_termino_extension: @datos_centro.fecha_termino_extension, institucion_albergante: @datos_centro.institucion_albergante, materno_investigador_responsable: @datos_centro.materno_investigador_responsable, nombre_autoridad: @datos_centro.nombre_autoridad, nombre_espaniol: @datos_centro.nombre_espaniol, nombre_ingles: @datos_centro.nombre_ingles, nombres_investigador_responsable: @datos_centro.nombres_investigador_responsable, paterno_investigador_responsable: @datos_centro.paterno_investigador_responsable, personalidad_juridica: @datos_centro.personalidad_juridica, pme_red_email: @datos_centro.pme_red_email, pme_red_nombre: @datos_centro.pme_red_nombre, sitio_web: @datos_centro.sitio_web, telefono: @datos_centro.telefono, tipo_centro: @datos_centro.tipo_centro } }
    end

    assert_redirected_to datos_centro_url(DatosCentro.last)
  end

  test "should show datos_centro" do
    get datos_centro_url(@datos_centro)
    assert_response :success
  end

  test "should get edit" do
    get edit_datos_centro_url(@datos_centro)
    assert_response :success
  end

  test "should update datos_centro" do
    patch datos_centro_url(@datos_centro), params: { datos_centro: { acronimo: @datos_centro.acronimo, admin_ejecutivo_rendiciones: @datos_centro.admin_ejecutivo_rendiciones, admin_email: @datos_centro.admin_email, admin_nombre: @datos_centro.admin_nombre, admin_telefono: @datos_centro.admin_telefono, ambito: @datos_centro.ambito, cientif_email: @datos_centro.cientif_email, cientif_nombre: @datos_centro.cientif_nombre, codigo_proyecto: @datos_centro.codigo_proyecto, decreto_aprobatorio: @datos_centro.decreto_aprobatorio, descripcion: @datos_centro.descripcion, direccion: @datos_centro.direccion, doc_aprobatorio: @datos_centro.doc_aprobatorio, doc_extension: @datos_centro.doc_extension, estado: @datos_centro.estado, etapa: @datos_centro.etapa, fax: @datos_centro.fax, fecha_decreto_aprobatorio: @datos_centro.fecha_decreto_aprobatorio, fecha_inicio: @datos_centro.fecha_inicio, fecha_termino: @datos_centro.fecha_termino, fecha_termino_extension: @datos_centro.fecha_termino_extension, institucion_albergante: @datos_centro.institucion_albergante, materno_investigador_responsable: @datos_centro.materno_investigador_responsable, nombre_autoridad: @datos_centro.nombre_autoridad, nombre_espaniol: @datos_centro.nombre_espaniol, nombre_ingles: @datos_centro.nombre_ingles, nombres_investigador_responsable: @datos_centro.nombres_investigador_responsable, paterno_investigador_responsable: @datos_centro.paterno_investigador_responsable, personalidad_juridica: @datos_centro.personalidad_juridica, pme_red_email: @datos_centro.pme_red_email, pme_red_nombre: @datos_centro.pme_red_nombre, sitio_web: @datos_centro.sitio_web, telefono: @datos_centro.telefono, tipo_centro: @datos_centro.tipo_centro } }
    assert_redirected_to datos_centro_url(@datos_centro)
  end

  test "should destroy datos_centro" do
    assert_difference('DatosCentro.count', -1) do
      delete datos_centro_url(@datos_centro)
    end

    assert_redirected_to datos_centros_url
  end
end
