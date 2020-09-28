class AddDeletedToUsers < ActiveRecord::Migration[5.2]
  def up
  	remove_column :users, :delted, :boolean
  	add_column :users, :deleted, :boolean, default: false
  end
end
