class AddProdutoToEstoques < ActiveRecord::Migration[6.0]
  def change
    add_reference :estoques, :produto, null: false, foreign_key: true
  end
end
