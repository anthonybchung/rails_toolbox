class AddTrackingIntervalToTrips < ActiveRecord::Migration[7.1]
  def change
    add_column :trips, :tracking_interval, :integer
  end
end
