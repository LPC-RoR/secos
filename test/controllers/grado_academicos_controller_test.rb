require 'test_helper'

class GradoAcademicosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grado_academico = grado_academicos(:one)
  end

  test "should get index" do
    get grado_academicos_url
    assert_response :success
  end

  test "should get new" do
    get new_grado_academico_url
    assert_response :success
  end

  test "should create grado_academico" do
    assert_difference('GradoAcademico.count') do
      post grado_academicos_url, params: { grado_academico: { grado_academico: @grado_academico.grado_academico } }
    end

    assert_redirected_to grado_academico_url(GradoAcademico.last)
  end

  test "should show grado_academico" do
    get grado_academico_url(@grado_academico)
    assert_response :success
  end

  test "should get edit" do
    get edit_grado_academico_url(@grado_academico)
    assert_response :success
  end

  test "should update grado_academico" do
    patch grado_academico_url(@grado_academico), params: { grado_academico: { grado_academico: @grado_academico.grado_academico } }
    assert_redirected_to grado_academico_url(@grado_academico)
  end

  test "should destroy grado_academico" do
    assert_difference('GradoAcademico.count', -1) do
      delete grado_academico_url(@grado_academico)
    end

    assert_redirected_to grado_academicos_url
  end
end
