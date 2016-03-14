class CreateCampanies < ActiveRecord::Migration
  def change
    create_table :campanies do |t|
      t.string :name
      t.string :cnpj
      t.string :phone
      t.string :obs
      t.integer :total_strategy
      t.integer :used_strategy
      t.integer :total_consultation
      t.integer :used_consultation
      t.date :dt_last_consultation

      t.timestamps null: false
    end
  end
end
