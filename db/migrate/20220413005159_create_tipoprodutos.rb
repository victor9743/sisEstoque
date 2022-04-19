class CreateTipoprodutos < ActiveRecord::Migration[6.0]
  def change
    create_table :tipoprodutos do |t|
      t.string :nomeproduto, null: false

      t.timestamps
    end
  end
end
