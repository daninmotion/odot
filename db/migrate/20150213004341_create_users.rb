class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :emails
      t.string :password_digest

      t.timestamps
    end
    add_index :users, :emails,
  end
end
