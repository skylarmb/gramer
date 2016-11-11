class ChangeUuidColumnType < ActiveRecord::Migration[5.0]
  def change
    enable_extension 'uuid-ossp'
    remove_column :results, :uuid
    add_column :results, :uuid, :uuid
  end
end
