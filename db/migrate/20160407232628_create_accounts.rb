class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :location
      t.string :website
      t.text :description
      t.integer :user_id
      
      t.timestamps null: false
    end
  end
end
