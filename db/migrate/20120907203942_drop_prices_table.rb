class DropPricesTable < ActiveRecord::Migration
  def up
    drop_table :maxprices
    drop_table :minprices
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
