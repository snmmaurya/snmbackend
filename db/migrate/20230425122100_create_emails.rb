class CreateEmails < ActiveRecord::Migration[7.0]
  def change
    create_table :emails, id: :uuid do |t|
      t.string :email
      t.string :subject
      t.integer :status, limit: 2, default: 0
      t.timestamps
    end

    add_index :emails, [:email, :subject]
  end
end
