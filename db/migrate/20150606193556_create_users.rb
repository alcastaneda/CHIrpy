class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :phone_number
      t.string :email
      t.boolean :recieve_text
      t.boolean :recieve_email

      t.timestamps null: false
    end
  end
end
