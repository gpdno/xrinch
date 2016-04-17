class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :name
      t.text :description
      t.references :user, index: true, foreign_key: true
      t.references :account, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
