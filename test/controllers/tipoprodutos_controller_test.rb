require 'test_helper'

class TipoprodutosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipoproduto = tipoprodutos(:one)
  end

  test "should get index" do
    get tipoprodutos_url
    assert_response :success
  end

  test "should get new" do
    get new_tipoproduto_url
    assert_response :success
  end

  test "should create tipoproduto" do
    assert_difference('Tipoproduto.count') do
      post tipoprodutos_url, params: { tipoproduto: { nomeproduto: @tipoproduto.nomeproduto } }
    end

    assert_redirected_to tipoproduto_url(Tipoproduto.last)
  end

  test "should show tipoproduto" do
    get tipoproduto_url(@tipoproduto)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipoproduto_url(@tipoproduto)
    assert_response :success
  end

  test "should update tipoproduto" do
    patch tipoproduto_url(@tipoproduto), params: { tipoproduto: { nomeproduto: @tipoproduto.nomeproduto } }
    assert_redirected_to tipoproduto_url(@tipoproduto)
  end

  test "should destroy tipoproduto" do
    assert_difference('Tipoproduto.count', -1) do
      delete tipoproduto_url(@tipoproduto)
    end

    assert_redirected_to tipoprodutos_url
  end
end
