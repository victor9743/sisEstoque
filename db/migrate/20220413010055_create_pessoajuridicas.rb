class CreatePessoajuridicas < ActiveRecord::Migration[6.0]
  def change
    create_table :pessoajuridicas do |t|
      t.string :nome
      t.string :cnpj

      t.timestamps
    end
  end
end
