class CreateSeats < ActiveRecord::Migration[5.2]
  def change
    create_table :seats do |t|
      t.references :hall, foreign_key: true
      t.string :seat_no

      t.timestamps
    end
  end
end
