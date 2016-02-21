class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :cpf
      t.string :phone
      t.string :celphone

      t.timestamps null: false
    end
  end
end
