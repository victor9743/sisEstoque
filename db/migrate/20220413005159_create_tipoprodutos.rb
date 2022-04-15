class CreateTipoprodutos < ActiveRecord::Migration[6.0]
  def change
    create_table :tipoprodutos do |t|
      t.string :nomeproduto

      t.timestamps
    end
  end
end
