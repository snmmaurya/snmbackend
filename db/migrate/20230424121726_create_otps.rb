class CreateOtps < ActiveRecord::Migration[7.0]
  def change
    create_table :otps, id: :uuid do |t|
      t.string :mobile_number
      t.string :template
      t.integer :reason, limit: 2, default: 0
      t.string :otp
      t.integer :status, limit: 2, default: 0
      t.datetime :used_at
      t.timestamps
    end
    add_index :otps, [:mobile_number, :reason, :status]
  end
end
