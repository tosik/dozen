class AddColumnIsDeleted < ActiveRecord::Migration
  def self.up
    add_column :goals, :is_deleted, :boolean, :null=>false, :default=>false
  end

  def self.down
    remove_column :goals, :is_deleted
  end
end
