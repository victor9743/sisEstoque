class CreateEstoques < ActiveRecord::Migration[6.0]
  def change
    create_table :estoques do |t|
      t.integer :qtdentrada
      t.integer :qtdsaida
      t.datetime :dataentrada
      t.datetime :datasaida
      t.float :valorentrada
      t.float :valorsaida

      t.timestamps
    end
  end
end
