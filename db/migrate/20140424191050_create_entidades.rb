class CreateEntidades < ActiveRecord::Migration
  def change
    create_table :entidades do |t|
      t.integer :codEmp
      t.string :razaoSocial
      t.string :cep
      t.integer :numero
      t.text :complemento

      t.timestamps
    end
  end
end
