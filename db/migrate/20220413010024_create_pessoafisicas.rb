class CreatePessoafisicas < ActiveRecord::Migration[6.0]
  def change
    create_table :pessoafisicas do |t|
      t.string :nome, null: false
      t.string :cpf, null: false

      t.timestamps
    end
  end
end
