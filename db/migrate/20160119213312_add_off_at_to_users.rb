class AddOffAtToUsers < ActiveRecord::Migration
  def change
    add_column :users, :off_at, :datetime
  end
end
