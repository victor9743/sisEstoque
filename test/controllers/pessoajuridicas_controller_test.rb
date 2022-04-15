require 'test_helper'

class PessoajuridicasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pessoajuridica = pessoajuridicas(:one)
  end

  test "should get index" do
    get pessoajuridicas_url
    assert_response :success
  end

  test "should get new" do
    get new_pessoajuridica_url
    assert_response :success
  end

  test "should create pessoajuridica" do
    assert_difference('Pessoajuridica.count') do
      post pessoajuridicas_url, params: { pessoajuridica: { cnpj: @pessoajuridica.cnpj, nome: @pessoajuridica.nome } }
    end

    assert_redirected_to pessoajuridica_url(Pessoajuridica.last)
  end

  test "should show pessoajuridica" do
    get pessoajuridica_url(@pessoajuridica)
    assert_response :success
  end

  test "should get edit" do
    get edit_pessoajuridica_url(@pessoajuridica)
    assert_response :success
  end

  test "should update pessoajuridica" do
    patch pessoajuridica_url(@pessoajuridica), params: { pessoajuridica: { cnpj: @pessoajuridica.cnpj, nome: @pessoajuridica.nome } }
    assert_redirected_to pessoajuridica_url(@pessoajuridica)
  end

  test "should destroy pessoajuridica" do
    assert_difference('Pessoajuridica.count', -1) do
      delete pessoajuridica_url(@pessoajuridica)
    end

    assert_redirected_to pessoajuridicas_url
  end
end
