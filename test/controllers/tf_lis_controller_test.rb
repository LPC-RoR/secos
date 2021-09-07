require 'test_helper'

class TfLisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tf_li = tf_lis(:one)
  end

  test "should get index" do
    get tf_lis_url
    assert_response :success
  end

  test "should get new" do
    get new_tf_li_url
    assert_response :success
  end

  test "should create tf_li" do
    assert_difference('TfLi.count') do
      post tf_lis_url, params: { tf_li: { LineaInvestigacion: @tf_li.LineaInvestigacion, tesis_finalizada_id: @tf_li.tesis_finalizada_id } }
    end

    assert_redirected_to tf_li_url(TfLi.last)
  end

  test "should show tf_li" do
    get tf_li_url(@tf_li)
    assert_response :success
  end

  test "should get edit" do
    get edit_tf_li_url(@tf_li)
    assert_response :success
  end

  test "should update tf_li" do
    patch tf_li_url(@tf_li), params: { tf_li: { LineaInvestigacion: @tf_li.LineaInvestigacion, tesis_finalizada_id: @tf_li.tesis_finalizada_id } }
    assert_redirected_to tf_li_url(@tf_li)
  end

  test "should destroy tf_li" do
    assert_difference('TfLi.count', -1) do
      delete tf_li_url(@tf_li)
    end

    assert_redirected_to tf_lis_url
  end
end
