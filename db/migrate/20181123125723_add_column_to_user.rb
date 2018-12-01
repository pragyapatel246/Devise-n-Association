class AddColumnToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :subscription_status, :boolean, default: false
    add_column :users, :images, :string, default: [].to_yaml
  end
end
