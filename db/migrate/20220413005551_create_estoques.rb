class CreateEstoques < ActiveRecord::Migration[6.0]
  def change
    create_table :estoques do |t|
      t.integer :qtdentrada, null: false
      t.integer :qtdsaida, null: false
      t.datetime :dataentrada, null: false
      t.datetime :datasaida, null: false
      t.float :valorentrada, null: false
      t.float :valorsaida, null: false

      t.timestamps
    end
  end
end
