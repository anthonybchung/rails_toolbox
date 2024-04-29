class CreateTrips < ActiveRecord::Migration[7.1]
  def change
    create_table :trips do |t|
      t.string :driver
      t.string :teacher
      t.integer :odometre_start
      t.integer :odometre_end
      t.datetime :time_start
      t.datetime :time_end

      t.timestamps
    end
  end
end
