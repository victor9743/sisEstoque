require 'test_helper'

class PessoafisicasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pessoafisica = pessoafisicas(:one)
  end

  test "should get index" do
    get pessoafisicas_url
    assert_response :success
  end

  test "should get new" do
    get new_pessoafisica_url
    assert_response :success
  end

  test "should create pessoafisica" do
    assert_difference('Pessoafisica.count') do
      post pessoafisicas_url, params: { pessoafisica: { cpf: @pessoafisica.cpf, nome: @pessoafisica.nome } }
    end

    assert_redirected_to pessoafisica_url(Pessoafisica.last)
  end

  test "should show pessoafisica" do
    get pessoafisica_url(@pessoafisica)
    assert_response :success
  end

  test "should get edit" do
    get edit_pessoafisica_url(@pessoafisica)
    assert_response :success
  end

  test "should update pessoafisica" do
    patch pessoafisica_url(@pessoafisica), params: { pessoafisica: { cpf: @pessoafisica.cpf, nome: @pessoafisica.nome } }
    assert_redirected_to pessoafisica_url(@pessoafisica)
  end

  test "should destroy pessoafisica" do
    assert_difference('Pessoafisica.count', -1) do
      delete pessoafisica_url(@pessoafisica)
    end

    assert_redirected_to pessoafisicas_url
  end
end
