class LitAddSyncCompleteToLitSources < ActiveRecord::Migration
  def up
    return if column_exists?(:lit_sources, :sync_complete)
    add_column :lit_sources, :sync_complete, :boolean
  end

  def down
    remove_column :lit_sources, :sync_complete
  end
end
