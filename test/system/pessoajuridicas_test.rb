require "application_system_test_case"

class PessoajuridicasTest < ApplicationSystemTestCase
  setup do
    @pessoajuridica = pessoajuridicas(:one)
  end

  test "visiting the index" do
    visit pessoajuridicas_url
    assert_selector "h1", text: "Pessoajuridicas"
  end

  test "creating a Pessoajuridica" do
    visit pessoajuridicas_url
    click_on "New Pessoajuridica"

    fill_in "Cnpj", with: @pessoajuridica.cnpj
    fill_in "Nome", with: @pessoajuridica.nome
    click_on "Create Pessoajuridica"

    assert_text "Pessoajuridica was successfully created"
    click_on "Back"
  end

  test "updating a Pessoajuridica" do
    visit pessoajuridicas_url
    click_on "Edit", match: :first

    fill_in "Cnpj", with: @pessoajuridica.cnpj
    fill_in "Nome", with: @pessoajuridica.nome
    click_on "Update Pessoajuridica"

    assert_text "Pessoajuridica was successfully updated"
    click_on "Back"
  end

  test "destroying a Pessoajuridica" do
    visit pessoajuridicas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pessoajuridica was successfully destroyed"
  end
end
