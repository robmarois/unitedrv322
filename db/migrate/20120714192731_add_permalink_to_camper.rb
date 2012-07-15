class AddPermalinkToCamper < ActiveRecord::Migration
  def self.up
    add_column :campers, :permalink, :string
    add_index :campers, :permalink
  end
  def self.down
    remove_column :campers, :permalink
  end
end