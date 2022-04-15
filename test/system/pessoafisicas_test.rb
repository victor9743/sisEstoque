require "application_system_test_case"

class PessoafisicasTest < ApplicationSystemTestCase
  setup do
    @pessoafisica = pessoafisicas(:one)
  end

  test "visiting the index" do
    visit pessoafisicas_url
    assert_selector "h1", text: "Pessoafisicas"
  end

  test "creating a Pessoafisica" do
    visit pessoafisicas_url
    click_on "New Pessoafisica"

    fill_in "Cpf", with: @pessoafisica.cpf
    fill_in "Nome", with: @pessoafisica.nome
    click_on "Create Pessoafisica"

    assert_text "Pessoafisica was successfully created"
    click_on "Back"
  end

  test "updating a Pessoafisica" do
    visit pessoafisicas_url
    click_on "Edit", match: :first

    fill_in "Cpf", with: @pessoafisica.cpf
    fill_in "Nome", with: @pessoafisica.nome
    click_on "Update Pessoafisica"

    assert_text "Pessoafisica was successfully updated"
    click_on "Back"
  end

  test "destroying a Pessoafisica" do
    visit pessoafisicas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pessoafisica was successfully destroyed"
  end
end
