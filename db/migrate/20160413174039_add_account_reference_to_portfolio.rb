class AddAccountReferenceToPortfolio < ActiveRecord::Migration
  def change
    add_reference :portfolios, :account, index: true, foreign_key: true
  end
end
