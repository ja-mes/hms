class AddArrivalDateToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :arrival_date, :date
  end
end
