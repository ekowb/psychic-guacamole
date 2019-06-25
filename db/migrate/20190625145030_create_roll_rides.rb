class CreateRollRides < ActiveRecord::Migration[5.1]
  def change
    create_table :roll_rides do |t|
      t.integer :rollercoaster_id
      t.integer :rider_id
    end
  end
end
