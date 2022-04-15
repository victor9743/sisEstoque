class CreatePessoafisicas < ActiveRecord::Migration[6.0]
  def change
    create_table :pessoafisicas do |t|
      t.string :nome
      t.string :cpf

      t.timestamps
    end
  end
end
