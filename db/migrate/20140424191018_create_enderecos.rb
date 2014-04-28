class CreateEnderecos < ActiveRecord::Migration
  def change
    create_table :enderecos do |t|
      t.string :logradouro
      t.string :cep
      t.references :entidade, index: true

      t.timestamps
    end
  end
end
