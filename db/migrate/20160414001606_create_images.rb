class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.string :picture
      t.integer :user_id
      t.integer :portfolio_id

      t.timestamps null: false
    end
  end
end
