class AddIndexToUuid < ActiveRecord::Migration[5.0]
  def change
    add_index :results, :uuid, unique: true
  end
end
