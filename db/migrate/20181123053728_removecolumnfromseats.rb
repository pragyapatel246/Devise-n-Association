class Removecolumnfromseats < ActiveRecord::Migration[5.2]
  def change
    remove_reference :seats, :hall, index: true
    remove_foreign_key :seats, :halls
  end
end
