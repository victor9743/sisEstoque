require "application_system_test_case"

class TipoprodutosTest < ApplicationSystemTestCase
  setup do
    @tipoproduto = tipoprodutos(:one)
  end

  test "visiting the index" do
    visit tipoprodutos_url
    assert_selector "h1", text: "Tipoprodutos"
  end

  test "creating a Tipoproduto" do
    visit tipoprodutos_url
    click_on "New Tipoproduto"

    fill_in "Nomeproduto", with: @tipoproduto.nomeproduto
    click_on "Create Tipoproduto"

    assert_text "Tipoproduto was successfully created"
    click_on "Back"
  end

  test "updating a Tipoproduto" do
    visit tipoprodutos_url
    click_on "Edit", match: :first

    fill_in "Nomeproduto", with: @tipoproduto.nomeproduto
    click_on "Update Tipoproduto"

    assert_text "Tipoproduto was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipoproduto" do
    visit tipoprodutos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipoproduto was successfully destroyed"
  end
end
