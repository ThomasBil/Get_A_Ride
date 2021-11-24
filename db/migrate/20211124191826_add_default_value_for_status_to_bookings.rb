class AddDefaultValueForStatusToBookings < ActiveRecord::Migration[6.0]
  def change
    change_column_default(:bookings, :status, 'Waiting')
  end
end
