class AddReleaseStatusToMovie < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :release_status, :boolean
  end
end
