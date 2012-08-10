class CreateViaturas < ActiveRecord::Migration
  def change
    create_table :viaturas do |t|
      t.string :placa
      t.string :prefixo
      t.integer :ano
      t.string :modelo

      t.timestamps
    end
  end
end
