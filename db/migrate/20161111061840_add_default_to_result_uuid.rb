class AddDefaultToResultUuid < ActiveRecord::Migration[5.0]
  def change
    change_column :results, :uuid, :uuid, default: 'uuid_generate_v4()'
  end
end
