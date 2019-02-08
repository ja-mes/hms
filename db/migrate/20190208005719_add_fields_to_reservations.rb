class AddFieldsToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :num_days, :int
    add_column :reservations, :depature_date, :date
  end
end
