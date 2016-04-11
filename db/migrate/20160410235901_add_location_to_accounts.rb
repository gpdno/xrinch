class AddLocationToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :location, :string
    add_column :accounts, :website, :string
  end
end
