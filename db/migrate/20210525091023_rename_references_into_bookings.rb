class RenameReferencesIntoBookings < ActiveRecord::Migration[6.0]
  def change
    rename_column :bookings, :user_id, :customer_id
  end
end
