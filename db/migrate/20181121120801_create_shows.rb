class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.string :show_time
      t.references :movie, foreign_key: true
      t.references :hall, foreign_key: true

      t.timestamps
    end
  end
end
