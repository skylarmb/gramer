class CreateResults < ActiveRecord::Migration[5.0]
  def change
    enable_extension 'hstore'
    create_table :results do |t|
      t.string :uuid
      t.hstore :content

      t.timestamps
    end
  end
end
