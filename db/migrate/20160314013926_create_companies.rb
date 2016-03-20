class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name,  null: false
      t.string :cnpj,  null: false
      t.string :phone,  null: false
      t.string :obs
      t.integer :total_strategy,  null: false
      t.integer :used_strategy
      t.integer :total_consultation,  null: false
      t.integer :used_consultation
      t.date :dt_last_consultation

      t.timestamps null: false
    end
  end
end
