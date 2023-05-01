class CreateAppConfigs < ActiveRecord::Migration[7.0]
  def change
    create_table :app_configs, id: :uuid do |t|
      t.string :key
      t.jsonb :value, default: '{}'
      t.integer :status, limit: 2, default: 0
      t.timestamps
    end
    add_index :app_configs, :key, unique: true
  end
end
