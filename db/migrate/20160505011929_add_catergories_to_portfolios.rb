class AddCatergoriesToPortfolios < ActiveRecord::Migration
  def change
    add_column :portfolios, :category, :string
    add_column :portfolios, :keyword, :string
  end
end
