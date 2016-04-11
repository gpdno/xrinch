class AddDescriptionToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :description, :text
  end
end
