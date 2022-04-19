class CreateProdutos < ActiveRecord::Migration[6.0]
  def change
    create_table :produtos do |t|
      t.string :nomeproduto, null: false
      t.datetime :dtavalidade, null: false
      t.string :codbarras, null: false

      t.timestamps
    end
  end
end
