require "application_system_test_case"

class DatosCentrosTest < ApplicationSystemTestCase
  setup do
    @datos_centro = datos_centros(:one)
  end

  test "visiting the index" do
    visit datos_centros_url
    assert_selector "h1", text: "Datos Centros"
  end

  test "creating a Datos centro" do
    visit datos_centros_url
    click_on "New Datos Centro"

    fill_in "Acronimo", with: @datos_centro.acronimo
    fill_in "Admin ejecutivo rendiciones", with: @datos_centro.admin_ejecutivo_rendiciones
    fill_in "Admin email", with: @datos_centro.admin_email
    fill_in "Admin nombre", with: @datos_centro.admin_nombre
    fill_in "Admin telefono", with: @datos_centro.admin_telefono
    fill_in "Ambito", with: @datos_centro.ambito
    fill_in "Cientif email", with: @datos_centro.cientif_email
    fill_in "Cientif nombre", with: @datos_centro.cientif_nombre
    fill_in "Codigo proyecto", with: @datos_centro.codigo_proyecto
    fill_in "Decreto aprobatorio", with: @datos_centro.decreto_aprobatorio
    fill_in "Descripcion", with: @datos_centro.descripcion
    fill_in "Direccion", with: @datos_centro.direccion
    fill_in "Doc aprobatorio", with: @datos_centro.doc_aprobatorio
    fill_in "Doc extension", with: @datos_centro.doc_extension
    fill_in "Estado", with: @datos_centro.estado
    fill_in "Etapa", with: @datos_centro.etapa
    fill_in "Fax", with: @datos_centro.fax
    fill_in "Fecha decreto aprobatorio", with: @datos_centro.fecha_decreto_aprobatorio
    fill_in "Fecha inicio", with: @datos_centro.fecha_inicio
    fill_in "Fecha termino", with: @datos_centro.fecha_termino
    fill_in "Fecha termino extension", with: @datos_centro.fecha_termino_extension
    fill_in "Institucion albergante", with: @datos_centro.institucion_albergante
    fill_in "Materno investigador responsable", with: @datos_centro.materno_investigador_responsable
    fill_in "Nombre autoridad", with: @datos_centro.nombre_autoridad
    fill_in "Nombre espaniol", with: @datos_centro.nombre_espaniol
    fill_in "Nombre ingles", with: @datos_centro.nombre_ingles
    fill_in "Nombres investigador responsable", with: @datos_centro.nombres_investigador_responsable
    fill_in "Paterno investigador responsable", with: @datos_centro.paterno_investigador_responsable
    fill_in "Personalidad juridica", with: @datos_centro.personalidad_juridica
    fill_in "Pme red email", with: @datos_centro.pme_red_email
    fill_in "Pme red nombre", with: @datos_centro.pme_red_nombre
    fill_in "Sitio web", with: @datos_centro.sitio_web
    fill_in "Telefono", with: @datos_centro.telefono
    fill_in "Tipo centro", with: @datos_centro.tipo_centro
    click_on "Create Datos centro"

    assert_text "Datos centro was successfully created"
    click_on "Back"
  end

  test "updating a Datos centro" do
    visit datos_centros_url
    click_on "Edit", match: :first

    fill_in "Acronimo", with: @datos_centro.acronimo
    fill_in "Admin ejecutivo rendiciones", with: @datos_centro.admin_ejecutivo_rendiciones
    fill_in "Admin email", with: @datos_centro.admin_email
    fill_in "Admin nombre", with: @datos_centro.admin_nombre
    fill_in "Admin telefono", with: @datos_centro.admin_telefono
    fill_in "Ambito", with: @datos_centro.ambito
    fill_in "Cientif email", with: @datos_centro.cientif_email
    fill_in "Cientif nombre", with: @datos_centro.cientif_nombre
    fill_in "Codigo proyecto", with: @datos_centro.codigo_proyecto
    fill_in "Decreto aprobatorio", with: @datos_centro.decreto_aprobatorio
    fill_in "Descripcion", with: @datos_centro.descripcion
    fill_in "Direccion", with: @datos_centro.direccion
    fill_in "Doc aprobatorio", with: @datos_centro.doc_aprobatorio
    fill_in "Doc extension", with: @datos_centro.doc_extension
    fill_in "Estado", with: @datos_centro.estado
    fill_in "Etapa", with: @datos_centro.etapa
    fill_in "Fax", with: @datos_centro.fax
    fill_in "Fecha decreto aprobatorio", with: @datos_centro.fecha_decreto_aprobatorio
    fill_in "Fecha inicio", with: @datos_centro.fecha_inicio
    fill_in "Fecha termino", with: @datos_centro.fecha_termino
    fill_in "Fecha termino extension", with: @datos_centro.fecha_termino_extension
    fill_in "Institucion albergante", with: @datos_centro.institucion_albergante
    fill_in "Materno investigador responsable", with: @datos_centro.materno_investigador_responsable
    fill_in "Nombre autoridad", with: @datos_centro.nombre_autoridad
    fill_in "Nombre espaniol", with: @datos_centro.nombre_espaniol
    fill_in "Nombre ingles", with: @datos_centro.nombre_ingles
    fill_in "Nombres investigador responsable", with: @datos_centro.nombres_investigador_responsable
    fill_in "Paterno investigador responsable", with: @datos_centro.paterno_investigador_responsable
    fill_in "Personalidad juridica", with: @datos_centro.personalidad_juridica
    fill_in "Pme red email", with: @datos_centro.pme_red_email
    fill_in "Pme red nombre", with: @datos_centro.pme_red_nombre
    fill_in "Sitio web", with: @datos_centro.sitio_web
    fill_in "Telefono", with: @datos_centro.telefono
    fill_in "Tipo centro", with: @datos_centro.tipo_centro
    click_on "Update Datos centro"

    assert_text "Datos centro was successfully updated"
    click_on "Back"
  end

  test "destroying a Datos centro" do
    visit datos_centros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Datos centro was successfully destroyed"
  end
end
