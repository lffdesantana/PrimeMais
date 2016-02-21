class RemoveFieldPeopleToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :people_id, :string
  end
end
