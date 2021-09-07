require 'test_helper'

class ComiteEditorialesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comite_editorial = comite_editoriales(:one)
  end

  test "should get index" do
    get comite_editoriales_url
    assert_response :success
  end

  test "should get new" do
    get new_comite_editorial_url
    assert_response :success
  end

  test "should create comite_editorial" do
    assert_difference('ComiteEditorial.count') do
      post comite_editoriales_url, params: { comite_editorial: { anio_inicio: @comite_editorial.anio_inicio, anio_termino: @comite_editorial.anio_termino, categoria: @comite_editorial.categoria, nombre_publicacion: @comite_editorial.nombre_publicacion, otra_categoria: @comite_editorial.otra_categoria } }
    end

    assert_redirected_to comite_editorial_url(ComiteEditorial.last)
  end

  test "should show comite_editorial" do
    get comite_editorial_url(@comite_editorial)
    assert_response :success
  end

  test "should get edit" do
    get edit_comite_editorial_url(@comite_editorial)
    assert_response :success
  end

  test "should update comite_editorial" do
    patch comite_editorial_url(@comite_editorial), params: { comite_editorial: { anio_inicio: @comite_editorial.anio_inicio, anio_termino: @comite_editorial.anio_termino, categoria: @comite_editorial.categoria, nombre_publicacion: @comite_editorial.nombre_publicacion, otra_categoria: @comite_editorial.otra_categoria } }
    assert_redirected_to comite_editorial_url(@comite_editorial)
  end

  test "should destroy comite_editorial" do
    assert_difference('ComiteEditorial.count', -1) do
      delete comite_editorial_url(@comite_editorial)
    end

    assert_redirected_to comite_editoriales_url
  end
end
