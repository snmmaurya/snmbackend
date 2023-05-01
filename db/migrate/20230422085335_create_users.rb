class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users, id: :uuid do |t|
      t.string :email, null: false, default: ""
      t.string :mobile_number, null: false, default: ""
      t.string :password_digest, null: false, default: ""
      t.string :first_name, null: false, default: ""
      t.string :last_name, null: false, default: ""
      t.string :address, null: false, default: ""
      t.integer :status, limit: 2, default: 0
      t.timestamps
    end
    add_index :users, :email, unique: true
    add_index :users, :mobile_number, unique: true
  end
end
