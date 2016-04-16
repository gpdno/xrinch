class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :location
      t.string :website
      t.text :description
      t.references :user, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
