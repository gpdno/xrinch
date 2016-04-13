class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      
      t.string :name
      t.text :description
      t.string :img1
      t.timestamps null: false
    end
  end
end
