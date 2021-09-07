require 'test_helper'

class PatPaisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pat_pai = pat_pais(:one)
  end

  test "should get index" do
    get pat_pais_url
    assert_response :success
  end

  test "should get new" do
    get new_pat_pai_url
    assert_response :success
  end

  test "should create pat_pai" do
    assert_difference('PatPai.count') do
      post pat_pais_url, params: { pat_pai: { pais_id: @pat_pai.pais_id, patente_id: @pat_pai.patente_id } }
    end

    assert_redirected_to pat_pai_url(PatPai.last)
  end

  test "should show pat_pai" do
    get pat_pai_url(@pat_pai)
    assert_response :success
  end

  test "should get edit" do
    get edit_pat_pai_url(@pat_pai)
    assert_response :success
  end

  test "should update pat_pai" do
    patch pat_pai_url(@pat_pai), params: { pat_pai: { pais_id: @pat_pai.pais_id, patente_id: @pat_pai.patente_id } }
    assert_redirected_to pat_pai_url(@pat_pai)
  end

  test "should destroy pat_pai" do
    assert_difference('PatPai.count', -1) do
      delete pat_pai_url(@pat_pai)
    end

    assert_redirected_to pat_pais_url
  end
end
